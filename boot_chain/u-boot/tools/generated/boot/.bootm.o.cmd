cmd_tools/generated/boot/bootm.o := cc -Wp,-MMD,tools/generated/boot/.bootm.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE  -c -o tools/generated/boot/bootm.o tools/generated/boot/bootm.c

source_tools/generated/boot/bootm.o := tools/generated/boot/bootm.c

deps_tools/generated/boot/bootm.o := \
  include/compiler.h \
  tools/../boot/bootm.c \
    $(wildcard include/config/cmd/usb.h) \
    $(wildcard include/config/legacy/image/format.h) \
    $(wildcard include/config/fit.h) \
    $(wildcard include/config/android/boot/image.h) \
    $(wildcard include/config/cmd/bootm/pre/load.h) \
    $(wildcard include/config/cmd/abootimg.h) \
    $(wildcard include/config/of/libfdt.h) \
    $(wildcard include/config/cmd/fdt.h) \
    $(wildcard include/config/fpga.h) \
    $(wildcard include/config/fit/signature.h) \
    $(wildcard include/config/sys/bootm/len.h) \
    $(wildcard include/config/cmd/booti.h) \
    $(wildcard include/config/lmb.h) \
    $(wildcard include/config/netconsole.h) \
    $(wildcard include/config/silent/console.h) \
    $(wildcard include/config/silent/u/boot/only.h) \
    $(wildcard include/config/bootargs/subst.h) \
    $(wildcard include/config/cmdline.h) \
    $(wildcard include/config/efi/tcg2/protocol.h) \
    $(wildcard include/config/bootm/efi.h) \
    $(wildcard include/config/measured/boot.h) \
    $(wildcard include/config/measure/ignore/log.h) \
    $(wildcard include/config/measure/devicetree.h) \
    $(wildcard include/config/sys/boot/ramdisk/high.h) \
    $(wildcard include/config/trace.h) \
    $(wildcard include/config/ppc.h) \
    $(wildcard include/config/mips.h) \
  tools/mkimage.h \
  tools/os_support.h \
  tools/fdt_host.h \
  tools/../include/linux/libfdt.h \
  tools/../include/linux/../../scripts/dtc/libfdt/libfdt.h \
  tools/../include/linux/../../scripts/dtc/libfdt/libfdt_env.h \
  tools/../include/linux/../../scripts/dtc/libfdt/fdt.h \
  tools/../include/fdt_support.h \
    $(wildcard include/config/arch/fixup/fdt/memory.h) \
    $(wildcard include/config/usb/ehci/fsl.h) \
    $(wildcard include/config/usb/xhci/fsl.h) \
    $(wildcard include/config/sys/fsl/sec/compat.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/sys/fdt/pad.h) \
    $(wildcard include/config/of/board/setup.h) \
    $(wildcard include/config/board/rng/seed.h) \
    $(wildcard include/config/of/board/setup/extended.h) \
    $(wildcard include/config/of/system/setup.h) \
    $(wildcard include/config/fdt/fixup/partitions.h) \
    $(wildcard include/config/fman/enet.h) \
    $(wildcard include/config/fsl/mc/enet.h) \
    $(wildcard include/config/cmd/pstore.h) \
  tools/imagetool.h \

tools/generated/boot/bootm.o: $(deps_tools/generated/boot/bootm.o)

$(deps_tools/generated/boot/bootm.o):
