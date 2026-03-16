cmd_tools/generated/boot/image.o := cc -Wp,-MMD,tools/generated/boot/.image.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE  -c -o tools/generated/boot/image.o tools/generated/boot/image.c

source_tools/generated/boot/image.o := tools/generated/boot/image.c

deps_tools/generated/boot/image.o := \
  include/compiler.h \
  tools/../boot/image.c \
    $(wildcard include/config/show/boot/progress.h) \
    $(wildcard include/config/fit.h) \
    $(wildcard include/config/of/libfdt.h) \
    $(wildcard include/config/sys/malloc/len.h) \
    $(wildcard include/config/cmd/elf.h) \
    $(wildcard include/config/integrity.h) \
    $(wildcard include/config/bootm/openrtos.h) \
    $(wildcard include/config/bootm/elf.h) \
    $(wildcard include/config/gzip.h) \
    $(wildcard include/config/bzip2.h) \
    $(wildcard include/config/lzma.h) \
    $(wildcard include/config/lzo.h) \
    $(wildcard include/config/lz4.h) \
    $(wildcard include/config/zstd.h) \
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

tools/generated/boot/image.o: $(deps_tools/generated/boot/image.o)

$(deps_tools/generated/boot/image.o):
