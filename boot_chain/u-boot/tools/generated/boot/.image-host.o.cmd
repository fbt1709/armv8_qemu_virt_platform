cmd_tools/generated/boot/image-host.o := cc -Wp,-MMD,tools/generated/boot/.image-host.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE  -c -o tools/generated/boot/image-host.o tools/generated/boot/image-host.c

source_tools/generated/boot/image-host.o := tools/generated/boot/image-host.c

deps_tools/generated/boot/image-host.o := \
  include/compiler.h \
  tools/../boot/image-host.c \

tools/generated/boot/image-host.o: $(deps_tools/generated/boot/image-host.o)

$(deps_tools/generated/boot/image-host.o):
