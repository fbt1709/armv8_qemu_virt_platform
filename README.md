## ARMv8 QEMU 虚拟平台工程说明

本目录 `/home/fbt1709/armv8_env_test` 搭了一套「ARMv8 QEMU 平台 + 自制 rootfs + 启动链 + 性能分析（perf）」环境。  
下面分别说明每个关键脚本/文件的作用、使用方法和典型工作流，方便后续维护。

---

## 1. `create_debian_disk.sh`

**作用：**

- 每次运行都会「从零」重建一个磁盘镜像：
  - 删除旧的 `disk_rootfs/debian-arm64.img`
  - 创建新的 4G raw 镜像
  - 建立分区表（msdos）+ 单一 ext4 主分区
  - 将指定的 rootfs tar 解压到镜像中
  - 把内核 `Image_bake` 和当前目录下的 `*.dtb` 复制到 rootfs 的 `/boot/`

**脚本中的关键参数（可按需修改）：**

- `IMG`：磁盘镜像路径  
  `IMG=/home/fbt1709/armv8_env_test/disk_rootfs/debian-arm64.img`
- `ROOTFS_TAR`：rootfs tar 包路径  
  例如：
  - `ubuntu-base-24.04.4-base-arm64.tar.gz`
  - 或 `debian-unstable-arm64.tar.gz`
- `KERNEL_IMAGE`：内核镜像（供 U‑Boot / QEMU 使用）  
  `KERNEL_IMAGE=/home/fbt1709/armv8_env_test/kernel/linux-6.12/arch/arm64/boot/Image_bake`
- `DTB_DIR`：运行脚本时的当前目录，下的 `*.dtb` 会被拷贝到 `/boot`

**使用：**

```bash
cd /home/fbt1709/armv8_env_test
./create_debian_disk.sh
```

**结果：**

- 生成一个新的 `disk_rootfs/debian-arm64.img`，其中：
  - 根文件系统来自 `ROOTFS_TAR`
  - `/boot/` 中包含：
    - `Image_bake`
    - 当前目录下所有 `*.dtb`

**注意：**

- 该脚本每次运行都会删除并重建镜像（包括重新 `mkfs`），之前在 guest 里安装的包或修改的配置会全部丢失。
- 如需长期保留某个 rootfs，请停止调用此脚本或先备份镜像。

---

## 2. `run_disk.sh`

**作用：**

- 不经过 TF‑A / U‑Boot，直接用 QEMU 加载内核 `Image`，从 `debian-arm64.img` 启动 rootfs。

**核心参数（简化）：**

```sh
qemu-system-aarch64 \
  -machine virt,gic-version=3,virtualization=on \
  -cpu cortex-a57 \
  -smp 4 \
  -m 2048 \
  -nographic \
  -kernel kernel/linux-6.12/arch/arm64/boot/Image \
  -drive if=none,file=disk_rootfs/debian-arm64.img,format=raw,id=vd0 \
  -device virtio-blk-pci,drive=vd0 \
  -netdev user,id=net0 \
  -device virtio-net-pci,netdev=net0 \
  -append "console=ttyAMA0 root=/dev/vda1 rw init=/etc/rc.local"
```

**使用：**

```bash
cd /home/fbt1709/armv8_env_test
./run_disk.sh
```

**要点：**

- 根设备：`/dev/vda1`
- 通过 `-append` 设定：
  - 串口：`console=ttyAMA0`
  - 根：`root=/dev/vda1 rw`
  - init：`init=/etc/rc.local`（会以 `/etc/rc.local` 作为 PID 1）

**典型 `/etc/rc.local` 模板（在 rootfs 中）：**

```sh
#!/bin/sh
#!/bin/sh
set -e

mount -t proc none /proc 2>/dev/null || true
mount -t sysfs none /sys 2>/dev/null || true
mount -t devtmpfs udev /dev 2>/dev/null || true
mkdir -p /dev/pts /run /tmp
mount -t devpts devpts /dev/pts 2>/dev/null || true
mount -t tmpfs tmpfs /run 2>/dev/null || true

export TERM=linux
export HOME=/root
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

exec /bin/bash -l
```

> `/etc/rc.local` 必须在 rootfs 中存在且有执行权限：`chmod 755 /etc/rc.local`。

---

## 3. `boot_chain/run_tfa_flash.sh`

**作用：**

- 通过 TF‑A（BL1/BL2/BL31）+ U‑Boot 的完整启动链，启动 QEMU 并使用 `debian-arm64.img` 作为虚拟磁盘。

**核心参数（简化）：**

```sh
qemu-system-aarch64 \
  -machine virt,secure=on,gic-version=2,virtualization=on \
  -cpu cortex-a57 -smp 4 -m 2048 -nographic \
  -bios /home/fbt1709/armv8_env_test/boot_chain/trusted-firmware-a/build/qemu/debug/flash.bin \
  -drive if=none,file=/home/fbt1709/armv8_env_test/disk_rootfs/debian-arm64.img,format=raw,id=vd0 \
  -device virtio-blk-pci,drive=vd0 \
  -netdev user,id=net0 \
  -virtfs local,path=/home/fbt1709/armv8_env_test/boot_chain/qemu_share,mount_tag=hostshare,security_model=none,id=hostshare \
  -device virtio-net-pci,netdev=net0
```

**使用：**

```bash
cd /home/fbt1709/armv8_env_test/boot_chain
./run_tfa_flash.sh
```

**在 U‑Boot 中常用命令：**

- 列出 rootfs 根目录：

```sh
ext4ls virtio 0:1 /
```

- 列出 `/boot` 文件：

```sh
ext4ls virtio 0:1 /boot
```

- 手动加载并启动：

```sh
setenv kernel_addr_r 0x40200000
setenv fdt_addr_r    0x40000000

ext4load virtio 0:1 ${kernel_addr_r} /boot/Image_bake
ext4load virtio 0:1 ${fdt_addr_r}    /boot/virt-atf-gicv2.dtb   # 按实际 dtb 文件名修改

setenv bootargs 'console=ttyAMA0,115200 earlycon=pl011,0x09000000,115200 root=/dev/vda1 rw init=/etc/rc.local'

booti ${kernel_addr_r} - ${fdt_addr_r}
```

---

## 4. `boot_chain/build_atf_fip.sh`

**作用：**

- 构建 Trusted Firmware‑A（TF‑A）的各个阶段镜像（BL1/BL2/BL31）和 FIP，并与 `u-boot.bin` 集成，生成一个可用的 `flash.bin` 供 QEMU 的 `-bios` 使用。

**主要步骤：**

- 进入 TF‑A 源码目录：

```sh
TFA_DIR=/home/fbt1709/armv8_env_test/boot_chain/trusted-firmware-a
cd "$TFA_DIR"
```

- `make PLAT=qemu ARCH=aarch64` 构建 BL1/BL2/BL31、证书和 FIP，指定：
  - `BL33=/home/fbt1709/armv8_env_test/boot_chain/u-boot/u-boot.bin`
  - 各类 key（root_key, bl31_key, bl2_key, bl33_key）

- 在 `build/qemu/debug` 目录中：
  - 用 `dd` 把 `bl1.bin` 写到 flash 开头
  - 用 `dd` 把 `fip.bin` 写到 offset `0x40000`（64 * 4KB）

**使用：**

```bash
cd /home/fbt1709/armv8_env_test/boot_chain
./build_atf_fip.sh
```

成功后：  
`trusted-firmware-a/build/qemu/debug/flash.bin` 会被 `run_tfa_flash.sh` 用作 `-bios`。

---

## 5. perf 等性能工具的离线集成（概要）

为了在 guest 中离线使用 `perf` 等工具，采用「宿主机交叉编译 → 拷入 rootfs」的方式。

### 5.1 编译 perf（在宿主机）

```bash
cd /home/fbt1709/armv8_env_test/kernel/linux-6.12/tools/perf

make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
     NO_LIBELF=1 NO_LIBDW=1 NO_LIBUNWIND=1 NO_LIBTRACEEVENT=1 \
     -j"$(nproc)"
```

生成的 `perf` 为 ARM64 可执行文件。

### 5.2 将 perf 注入 rootfs

```bash
cd /home/fbt1709/armv8_env_test

IMG=disk_rootfs/debian-arm64.img
LOOP=$(sudo losetup -fP --show "$IMG")
sudo mkdir -p /mnt/debian_root
sudo mount "${LOOP}p1" /mnt/debian_root

sudo mkdir -p /mnt/debian_root/usr/bin
sudo cp kernel/linux-6.12/tools/perf/perf /mnt/debian_root/usr/bin/perf
sudo chmod +x /mnt/debian_root/usr/bin/perf

sudo umount /mnt/debian_root
sudo losetup -d "$LOOP"
```

启动 guest 后即可在 ARM 系统内使用：

```sh
perf stat ls
perf record -g ./your_program
perf report
```

如有额外依赖缺失（某些 `.so`），则需要同样通过挂载 rootfs 的方式在宿主机上拷入对应 ARM64 库文件。

---

## 6. 典型调试 / 使用流程

1. **从零构建 rootfs 镜像：**

   ```bash
   ./create_debian_disk.sh
   ```

2. **在宿主机写好 `/etc/rc.local`（作为 init）：**

   挂载镜像、写入模板、`chmod 755`，保证：

   - 挂载 `/proc`、`/sys`、`/dev` 等
   - 最后 `exec /bin/sh` 或 `exec /bin/bash -l`

3. **（可选）将 perf 等工具注入 rootfs：**

   - 在宿主机交叉编译 perf
   - 通过 `losetup + mount` 拷入 rootfs `/usr/bin/`

4. **启动方式选择：**

   - 快速启动 → `./run_disk.sh`（直接 kernel + rootfs）
   - 完整启动链 → `./boot_chain/run_tfa_flash.sh` + U‑Boot 命令

5. **在 guest 中做性能分析 / 开发：**

   - 使用 `/etc/rc.local` 提供的 shell 环境
   - 离线使用 `perf`、BusyBox 等工具进行性能分析和调优

---

## 7. 后续维护建议

- 若要频繁在 rootfs 内安装工具或修改配置，建议：
  - 减少对 `create_debian_disk.sh` 的调用次数（避免反复清盘）
  - 使用宿主机的 `losetup + mount` 方式对 rootfs 做增量修改
- 若增加新工具（如 stress-ng、htop 等），推荐做法：
  - 在宿主机交叉编译 ARM64 二进制
  - 通过挂载 rootfs 的方式拷入 `/usr/bin/` 或 `/bin/`
- 对启动链（TF‑A/U‑Boot）做改动时：
  - 优先在 `run_disk.sh` 路径下验证内核 + rootfs 是否稳定，再将更改融入 TF‑A/U‑Boot 流程中。 
