cmd_tools/generated/boot/image-fit.o := cc -Wp,-MMD,tools/generated/boot/.image-fit.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE  -c -o tools/generated/boot/image-fit.o tools/generated/boot/image-fit.c

source_tools/generated/boot/image-fit.o := tools/generated/boot/image-fit.c

deps_tools/generated/boot/image-fit.o := \
  include/compiler.h \
  tools/../boot/image-fit.c \
    $(wildcard include/config/dm/hash.h) \
    $(wildcard include/config/fit/print.h) \
    $(wildcard include/config/fit/signature.h) \
    $(wildcard include/config/sandbox.h) \
    $(wildcard include/config/arm64/support/aarch32.h) \
    $(wildcard include/config/fit/full/check.h) \
    $(wildcard include/config/multi/dtb/fit.h) \
    $(wildcard include/config/fit/best/match.h) \
    $(wildcard include/config/fit/cipher.h) \
    $(wildcard include/config/fit/image/post/process.h) \
    $(wildcard include/config/of/libfdt/overlay.h) \
    $(wildcard include/config/sys/fdt/pad.h) \
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
    $(wildcard include/config/of/board/setup.h) \
    $(wildcard include/config/board/rng/seed.h) \
    $(wildcard include/config/of/board/setup/extended.h) \
    $(wildcard include/config/of/system/setup.h) \
    $(wildcard include/config/fdt/fixup/partitions.h) \
    $(wildcard include/config/fman/enet.h) \
    $(wildcard include/config/fsl/mc/enet.h) \
    $(wildcard include/config/cmd/pstore.h) \
  tools/imagetool.h \

tools/generated/boot/image-fit.o: $(deps_tools/generated/boot/image-fit.o)

$(deps_tools/generated/boot/image-fit.o):
