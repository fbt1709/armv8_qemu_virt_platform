cmd_tools/imx8mimage.o := cc -Wp,-MMD,tools/.imx8mimage.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE  -c -o tools/imx8mimage.o tools/imx8mimage.c

source_tools/imx8mimage.o := tools/imx8mimage.c

deps_tools/imx8mimage.o := \
    $(wildcard include/config/fspi/conf/header.h) \
    $(wildcard include/config/lut/sequence.h) \
    $(wildcard include/config/read/clk/source.h) \
    $(wildcard include/config/fspi/col/addr/w.h) \
    $(wildcard include/config/fspi/controller/misc.h) \
    $(wildcard include/config/device/type.h) \
    $(wildcard include/config/flash/pad/type.h) \
    $(wildcard include/config/serial/clk/frequency.h) \
    $(wildcard include/config/lut/custom/sequence.h) \
    $(wildcard include/config/fspi/flash/a1/size.h) \
    $(wildcard include/config/fspi/conf/file.h) \
  include/compiler.h \
  tools/imagetool.h \
  tools/os_support.h \
  tools/fdt_host.h \
  tools/../include/linux/libfdt.h \
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

tools/imx8mimage.o: $(deps_tools/imx8mimage.o)

$(deps_tools/imx8mimage.o):
