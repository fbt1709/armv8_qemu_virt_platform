cmd_tools/generated/common/hash.o := cc -Wp,-MMD,tools/generated/common/.hash.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE  -c -o tools/generated/common/hash.o tools/generated/common/hash.c

source_tools/generated/common/hash.o := tools/generated/common/hash.c

deps_tools/generated/common/hash.o := \
  include/compiler.h \
  tools/../common/hash.c \
    $(wildcard include/config/md5.h) \
    $(wildcard include/config/sha1.h) \
    $(wildcard include/config/sha/hw/accel.h) \
    $(wildcard include/config/sha/prog/hw/accel.h) \
    $(wildcard include/config/sha256.h) \
    $(wildcard include/config/sha384.h) \
    $(wildcard include/config/sha512/hw/accel.h) \
    $(wildcard include/config/sha512.h) \
    $(wildcard include/config/sm3.h) \
    $(wildcard include/config/crc16.h) \
    $(wildcard include/config/crc8.h) \
    $(wildcard include/config/hash/crc8.h) \
    $(wildcard include/config/crc32.h) \
    $(wildcard include/config/cmd/sha1sum.h) \
    $(wildcard include/config/crc32/verify.h) \
    $(wildcard include/config/cmd/hash.h) \
    $(wildcard include/config/cmd/md5sum.h) \
    $(wildcard include/config/xpl/build.h) \
    $(wildcard include/config/cmd/crc32.h) \
    $(wildcard include/config/sha1sum/verify.h) \
    $(wildcard include/config/md5sum/verify.h) \
    $(wildcard include/config/hash/verify.h) \
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

tools/generated/common/hash.o: $(deps_tools/generated/common/hash.o)

$(deps_tools/generated/common/hash.o):
