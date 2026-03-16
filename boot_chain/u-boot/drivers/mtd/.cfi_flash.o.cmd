cmd_drivers/mtd/cfi_flash.o := aarch64-linux-gnu-gcc -Wp,-MMD,drivers/mtd/.cfi_flash.o.d -nostdinc -isystem /usr/lib/gcc-cross/aarch64-linux-gnu/13/include -Iinclude   "-DMBEDTLS_CONFIG_FILE=\"mbedtls_def_config.h\"" -I./lib/mbedtls -I./lib/mbedtls/port -I./lib/mbedtls/external/mbedtls -I./lib/mbedtls/external/mbedtls/include  -I./arch/arm/include -include ./include/linux/kconfig.h -I./dts/upstream/include  -D__KERNEL__ -D__UBOOT__ -Wall -Werror=strict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE -Werror=implicit-function-declaration -Werror=implicit-int -Wno-format-security -std=gnu11 -ffreestanding -fno-builtin -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -Wno-address-of-packed-member -Os -fno-stack-protector -fno-delete-null-pointer-checks -Wno-zero-length-bounds -Wno-array-bounds -Wno-stringop-overflow -Wno-maybe-uninitialized -fmacro-prefix-map=./= -gdwarf-4 -fstack-usage -Wno-format-nonliteral -Wno-address-of-packed-member -Wno-unused-but-set-variable -Wno-unused-but-set-variable -Werror=date-time -Wno-packed-not-aligned -Wno-pointer-sign -Wno-stringop-truncation -fno-strict-overflow -D__ARM__ -fno-pic -mstrict-align -ffunction-sections -fdata-sections -fno-common -ffixed-x18 -mgeneral-regs-only -mbranch-protection=none -pipe -march=armv8-a+crc -D__LINUX_ARM_ARCH__=8    -DKBUILD_MODFILE='"drivers/mtd/mtd"' -DKBUILD_BASENAME='"cfi_flash"' -DKBUILD_MODNAME='"mtd"' -D__KBUILD_MODNAME=kmod_mtd -c -o drivers/mtd/cfi_flash.o drivers/mtd/cfi_flash.c  

source_drivers/mtd/cfi_flash.o := drivers/mtd/cfi_flash.c

deps_drivers/mtd/cfi_flash.o := \
    $(wildcard include/config/flash/cfi/mtd.h) \
    $(wildcard include/config/cfi/flash/use/weak/accessors.h) \
    $(wildcard include/config/sys/cfi/flash/config/regs.h) \
    $(wildcard include/config/sys/max/flash/banks/detect.h) \
    $(wildcard include/config/cfi/flash.h) \
    $(wildcard include/config/env/is/in/flash.h) \
    $(wildcard include/config/env/addr/redund.h) \
    $(wildcard include/config/sys/monitor/base.h) \
    $(wildcard include/config/flash/cfi/legacy.h) \
    $(wildcard include/config/sys/hz.h) \
    $(wildcard include/config/sys/cfi/flash/status/poll.h) \
    $(wildcard include/config/sys/flash/use/buffer/write.h) \
    $(wildcard include/config/flash/spansion/s29ws/n.h) \
    $(wildcard include/config/sys/flash/check/blank/before/erase.h) \
    $(wildcard include/config/sys/flash/empty/info.h) \
    $(wildcard include/config/flash/show/progress.h) \
    $(wildcard include/config/sys/flash/protection.h) \
    $(wildcard include/config/sys/flash/cfi/width.h) \
    $(wildcard include/config/sys/max/flash/sect.h) \
    $(wildcard include/config/sys/flash/autoprotect/list.h) \
    $(wildcard include/config/monitor/is/in/ram.h) \
    $(wildcard include/config/env/addr.h) \
    $(wildcard include/config/env/sect/size.h) \
    $(wildcard include/config/sys/flash/quiet/test.h) \
  include/linux/kconfig.h \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/spl/.h) \
    $(wildcard include/config/tpl/.h) \
    $(wildcard include/config/tools/.h) \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/vpl/build.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/tools/foo.h) \
    $(wildcard include/config/xpl/build.h) \
    $(wildcard include/config/spl/foo.h) \
    $(wildcard include/config/tpl/foo.h) \
    $(wildcard include/config/vpl/foo.h) \
    $(wildcard include/config/option.h) \
    $(wildcard include/config/acme.h) \
    $(wildcard include/config/spl/acme.h) \
    $(wildcard include/config/tpl/acme.h) \
    $(wildcard include/config/if/enabled/int.h) \
    $(wildcard include/config/int/option.h) \
  include/config.h \
  include/configs/qemu-arm.h \
  arch/arm/include/asm/config.h \
    $(wildcard include/config/arch/ls1021a.h) \
    $(wildcard include/config/fsl/layerscape.h) \
  include/linux/kconfig.h \
  include/config_fallbacks.h \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/spl/max/size.h) \
  include/console.h \
    $(wildcard include/config/console/record.h) \
    $(wildcard include/config/video/ansi.h) \
    $(wildcard include/config/console/mux.h) \
  include/stdio_dev.h \
    $(wildcard include/config/console/flush/support.h) \
  include/stdio.h \
    $(wildcard include/config/serial.h) \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/cc/has/asm/inline.h) \
  include/linux/compiler_attributes.h \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/retpoline.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  arch/arm/include/asm/posix_types.h \
  arch/arm/include/asm/types.h \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/phys/64bit.h) \
    $(wildcard include/config/dma/addr/t/64bit.h) \
  include/asm-generic/int-ll64.h \
  include/linux/list.h \
  include/linux/poison.h \
  include/linux/errno.h \
  include/iomux.h \
  include/dm.h \
  include/dm/device.h \
    $(wildcard include/config/devres.h) \
    $(wildcard include/config/of/platdata/rt.h) \
    $(wildcard include/config/of/real.h) \
    $(wildcard include/config/dm/dma.h) \
    $(wildcard include/config/iommu.h) \
    $(wildcard include/config/linker/list/align.h) \
    $(wildcard include/config/of/control.h) \
    $(wildcard include/config/acpigen.h) \
    $(wildcard include/config/pci.h) \
  include/dm/ofnode.h \
    $(wildcard include/config/ofnode/multi/tree.h) \
    $(wildcard include/config/dm/inline/ofnode.h) \
    $(wildcard include/config/dm.h) \
  include/fdtdec.h \
    $(wildcard include/config/fdt/64bit.h) \
    $(wildcard include/config/of/embed.h) \
    $(wildcard include/config/of/board.h) \
  include/linux/libfdt.h \
  include/linux/libfdt_env.h \
  include/linux/string.h \
    $(wildcard include/config/sandbox.h) \
  arch/arm/include/asm/string.h \
    $(wildcard include/config/use/arch/memcpy.h) \
    $(wildcard include/config/use/arch/memmove.h) \
    $(wildcard include/config/use/arch/memset.h) \
  include/linux/linux_string.h \
  include/linux/kernel.h \
  include/linux/printk.h \
    $(wildcard include/config/loglevel.h) \
    $(wildcard include/config/log.h) \
  include/log.h \
    $(wildcard include/config/log/max/level.h) \
    $(wildcard include/config/logf/func.h) \
    $(wildcard include/config/panic/hang.h) \
    $(wildcard include/config/log/error/return.h) \
    $(wildcard include/config/logf/file.h) \
    $(wildcard include/config/logf/line.h) \
  include/linker_lists.h \
  include/dm/uclass-id.h \
  include/linux/bitops.h \
    $(wildcard include/config/sandbox/bits/per/long.h) \
  include/asm-generic/bitsperlong.h \
  arch/arm/include/asm/bitops.h \
    $(wildcard include/config/has/thumb2.h) \
    $(wildcard include/config/sys/thumb/build.h) \
  include/asm-generic/bitops/builtin-__fls.h \
  include/asm-generic/bitops/builtin-__ffs.h \
  include/asm-generic/bitops/builtin-fls.h \
  include/asm-generic/bitops/builtin-ffs.h \
  include/asm-generic/bitops/fls64.h \
  arch/arm/include/asm/proc-armv/system.h \
  include/limits.h \
    $(wildcard include/config/64bit.h) \
    $(wildcard include/config/spl/64bit.h) \
  arch/arm/include/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/linux/byteorder/swab.h \
  include/linux/byteorder/generic.h \
  include/vsprintf.h \
  include/linux/../../scripts/dtc/libfdt/libfdt.h \
  include/linux/../../scripts/dtc/libfdt/libfdt_env.h \
  include/linux/../../scripts/dtc/libfdt/fdt.h \
  include/pci.h \
    $(wildcard include/config/sys/pci/64bit.h) \
    $(wildcard include/config/dm/pci/compat.h) \
    $(wildcard include/config/mpc85xx.h) \
    $(wildcard include/config/pci/sriov.h) \
  include/pci_ids.h \
  include/dm/pci.h \
  include/dm/of.h \
  arch/arm/include/asm/global_data.h \
    $(wildcard include/config/fsl/esdhc.h) \
    $(wildcard include/config/fsl/esdhc/imx.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/u/qe.h) \
    $(wildcard include/config/at91family.h) \
    $(wildcard include/config/sys/icache/off.h) \
    $(wildcard include/config/sys/dcache/off.h) \
    $(wildcard include/config/resv/ram.h) \
    $(wildcard include/config/arch/omap2plus.h) \
    $(wildcard include/config/fsl/lsch3.h) \
    $(wildcard include/config/sys/fsl/has/dp/ddr.h) \
    $(wildcard include/config/arch/imx8.h) \
    $(wildcard include/config/imx/ele.h) \
    $(wildcard include/config/arch/imx8ulp.h) \
    $(wildcard include/config/smbios.h) \
  arch/arm/include/asm/u-boot.h \
  include/asm-generic/u-boot.h \
    $(wildcard include/config/arm.h) \
    $(wildcard include/config/mpc8xx.h) \
    $(wildcard include/config/e500.h) \
    $(wildcard include/config/mpc86xx.h) \
    $(wildcard include/config/m68k.h) \
    $(wildcard include/config/mpc83xx.h) \
    $(wildcard include/config/extra/clock.h) \
    $(wildcard include/config/nr/dram/banks.h) \
  arch/arm/include/asm/u-boot-arm.h \
  include/asm-generic/global_data.h \
    $(wildcard include/config/env/support.h) \
    $(wildcard include/config/post.h) \
    $(wildcard include/config/board/types.h) \
    $(wildcard include/config/pre/console/buffer.h) \
    $(wildcard include/config/of/platdata/driver/rt.h) \
    $(wildcard include/config/timer.h) \
    $(wildcard include/config/of/live.h) \
    $(wildcard include/config/multi/dtb/fit.h) \
    $(wildcard include/config/trace.h) \
    $(wildcard include/config/sys/i2c/legacy.h) \
    $(wildcard include/config/cmd/bdinfo/extra.h) \
    $(wildcard include/config/sys/malloc/f.h) \
    $(wildcard include/config/video.h) \
    $(wildcard include/config/bootstage.h) \
    $(wildcard include/config/bloblist.h) \
    $(wildcard include/config/handoff.h) \
    $(wildcard include/config/translation/offset.h) \
    $(wildcard include/config/generate/smbios/table.h) \
    $(wildcard include/config/event.h) \
    $(wildcard include/config/cyclic.h) \
    $(wildcard include/config/upl.h) \
    $(wildcard include/config/event/dynamic.h) \
    $(wildcard include/config/sys/malloc/f/len.h) \
    $(wildcard include/config/trace/buffer/size.h) \
  include/board_f.h \
  include/event_internal.h \
  include/event.h \
    $(wildcard include/config/event/debug.h) \
  include/dm/ofnode_decl.h \
  include/membuf.h \
  include/linux/build_bug.h \
  include/asm-offsets.h \
  include/generated/generic-asm-offsets.h \
  include/dm/of_access.h \
  include/phy_interface.h \
    $(wildcard include/config/arch/lx2160a.h) \
    $(wildcard include/config/arch/lx2162a.h) \
    $(wildcard include/config/phy/ncsi.h) \
  include/string.h \
  include/dm/tag.h \
  include/dm/fdtaddr.h \
  include/dm/read.h \
    $(wildcard include/config/dm/dev/read/inline.h) \
    $(wildcard include/config/of/platdata.h) \
    $(wildcard include/config/of/libfdt.h) \
  include/dm/uclass.h \
  include/dm/platdata.h \
  include/env.h \
    $(wildcard include/config/env/import/fdt.h) \
  include/compiler.h \
  include/errno.h \
    $(wildcard include/config/errno/str.h) \
  include/fdt_support.h \
    $(wildcard include/config/arch/fixup/fdt/memory.h) \
    $(wildcard include/config/usb/ehci/fsl.h) \
    $(wildcard include/config/usb/xhci/fsl.h) \
    $(wildcard include/config/sys/fsl/sec/compat.h) \
    $(wildcard include/config/sys/fdt/pad.h) \
    $(wildcard include/config/of/board/setup.h) \
    $(wildcard include/config/board/rng/seed.h) \
    $(wildcard include/config/of/board/setup/extended.h) \
    $(wildcard include/config/of/system/setup.h) \
    $(wildcard include/config/fdt/fixup/partitions.h) \
    $(wildcard include/config/fman/enet.h) \
    $(wildcard include/config/fsl/mc/enet.h) \
    $(wildcard include/config/cmd/pstore.h) \
  include/abuf.h \
  include/flash.h \
    $(wildcard include/config/dm/mtd.h) \
  include/init.h \
    $(wildcard include/config/efi/client.h) \
    $(wildcard include/config/save/prev/bl/initramfs/start/addr.h) \
    $(wildcard include/config/save/prev/bl/fdt/addr.h) \
    $(wildcard include/config/cpu.h) \
    $(wildcard include/config/dtb/reselect.h) \
  include/irq_func.h \
  include/time.h \
  include/linux/typecheck.h \
  arch/arm/include/asm/processor.h \
  arch/arm/include/asm/atomic.h \
    $(wildcard include/config/smp.h) \
  include/asm-generic/atomic.h \
  arch/arm/include/asm/ptrace.h \
  arch/arm/include/asm/proc-armv/ptrace.h \
  arch/arm/include/asm/proc-armv/processor.h \
  arch/arm/include/asm/proc-armv/domain.h \
  arch/arm/include/asm/io.h \
    $(wildcard include/config/kvm/virt/ins.h) \
  arch/arm/include/asm/memory.h \
    $(wildcard include/config/discontigmem.h) \
  arch/arm/include/asm/barriers.h \
  include/cpu_func.h \
  include/asm-generic/io.h \
  include/iotrace.h \
    $(wildcard include/config/io/trace.h) \
  arch/arm/include/asm/unaligned.h \
  include/asm-generic/unaligned.h \
  include/env_internal.h \
    $(wildcard include/config/env/size.h) \
    $(wildcard include/config/sys/monitor/len.h) \
    $(wildcard include/config/env/is/in/nand.h) \
    $(wildcard include/config/env/offset/oob.h) \
    $(wildcard include/config/env/offset/redund.h) \
    $(wildcard include/config/env/redundant.h) \
    $(wildcard include/config/sys/malloc/len.h) \
    $(wildcard include/config/env/is/in/nvram.h) \
    $(wildcard include/config/default/env/is/rw.h) \
    $(wildcard include/config/cmd/saveenv.h) \
    $(wildcard include/config/saveenv.h) \
    $(wildcard include/config/cmd/eraseenv.h) \
    $(wildcard include/config/env/ext4/interface.h) \
    $(wildcard include/config/env/ext4/device/and/part.h) \
    $(wildcard include/config/env/fat/interface.h) \
    $(wildcard include/config/env/fat/device/and/part.h) \
  include/compiler.h \
  include/env_attr.h \
  include/env_callback.h \
    $(wildcard include/config/silent/console.h) \
    $(wildcard include/config/regex.h) \
    $(wildcard include/config/cmd/dns.h) \
    $(wildcard include/config/net.h) \
    $(wildcard include/config/net/lwip.h) \
    $(wildcard include/config/ipv6.h) \
    $(wildcard include/config/bootstd/full.h) \
    $(wildcard include/config/dfu.h) \
    $(wildcard include/config/env/callback/list/static.h) \
  include/env_flags.h \
    $(wildcard include/config/env/writeable/list.h) \
    $(wildcard include/config/env/overwrite.h) \
    $(wildcard include/config/env/overwrite/ethaddr/once.h) \
    $(wildcard include/config/cmd/env/flags.h) \
  include/search.h \
  include/linux/delay.h \
  include/mtd/cfi_flash.h \
    $(wildcard include/config/sys/flash/cfi/amd/reset.h) \
    $(wildcard include/config/sys/max/flash/banks.h) \
    $(wildcard include/config/flash/cfi/driver.h) \
    $(wildcard include/config/spl/mtd.h) \
  include/watchdog.h \
    $(wildcard include/config/watchdog.h) \
    $(wildcard include/config/hw/watchdog.h) \
  include/u-boot/schedule.h \
  include/uthread.h \
    $(wildcard include/config/uthread.h) \
  include/setjmp.h \
    $(wildcard include/config/have/setjmp.h) \
  arch/arm/include/asm/setjmp.h \

drivers/mtd/cfi_flash.o: $(deps_drivers/mtd/cfi_flash.o)

$(deps_drivers/mtd/cfi_flash.o):
