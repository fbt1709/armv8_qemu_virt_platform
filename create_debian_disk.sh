#!/bin/bash

# 极简版：为 debian-arm64.img 创建分区、文件系统并解 rootfs
# 并把 kernel Image + 当前目录下的 dtb 复制到 rootfs 的 /boot 里，便于从 U-Boot 启动

IMG=/home/fbt1709/armv8_env_test/disk_rootfs/debian-arm64.img
ROOTFS_TAR=/home/fbt1709/armv8_env_test/disk_rootfs/ubuntu-base-24.04.4-base-arm64.tar.gz
MNT=/mnt/debian_root
KERNEL_IMAGE=/home/fbt1709/armv8_env_test/kernel/linux-6.12/arch/arm64/boot/Image_bake
DTB_DIR="$(pwd)"   # 使用运行脚本时的当前目录中的 *.dtb

set -e

echo "使用镜像: $IMG"
echo "rootfs:   $ROOTFS_TAR"
echo "挂载点:   $MNT"
echo "kernel:   $KERNEL_IMAGE"
echo "dtb 目录: $DTB_DIR (会拷贝其中的 *.dtb 到 /boot)"

mkdir -p "$(dirname "$IMG")"

echo "每次运行前都重新创建磁盘和文件系统（清除旧内容）..."
rm -f "$IMG"
qemu-img create -f raw "$IMG" 4G

LOOP_INIT=$(sudo losetup -fP --show "$IMG")
echo "初始化使用的 loop 设备是: $LOOP_INIT"

echo "在 $LOOP_INIT 上创建分区表和单一主分区 (ext4)..."
sudo parted "$LOOP_INIT" --script mklabel msdos mkpart primary ext4 1MiB 100%

echo "在 ${LOOP_INIT}p1 上创建 ext4 文件系统..."
sudo mkfs.ext4 -F "${LOOP_INIT}p1"

sudo losetup -d "$LOOP_INIT"

echo "查找空闲 loop 设备并绑定镜像..."
LOOP=$(sudo losetup -fP --show "$IMG")
echo "使用的 loop 设备是: $LOOP"

echo "挂载 ${LOOP}p1 到 $MNT..."
sudo mkdir -p "$MNT"
sudo mount "${LOOP}p1" "$MNT"

echo "解压 rootfs 到镜像内..."
sudo tar xpf "$ROOTFS_TAR" -C "$MNT"

echo "复制 kernel Image 和 dtb 到 rootfs 的 /boot..."
sudo mkdir -p "$MNT/boot"
if [ -f "$KERNEL_IMAGE" ]; then
  sudo cp "$KERNEL_IMAGE" "$MNT/boot/"
else
  echo "警告: 未找到 kernel Image: $KERNEL_IMAGE"
fi

shopt -s nullglob
DTB_FILES=("$DTB_DIR"/*.dtb)
if [ "${#DTB_FILES[@]}" -gt 0 ]; then
  sudo cp "${DTB_FILES[@]}" "$MNT/boot/"
else
  echo "警告: 在 $DTB_DIR 中未找到任何 *.dtb 文件"
fi
shopt -u nullglob

echo "卸载并释放 loop 设备..."
sudo umount "$MNT"
sudo losetup -d "$LOOP"

echo "完成，镜像已包含 rootfs 和 /boot 内容。"

