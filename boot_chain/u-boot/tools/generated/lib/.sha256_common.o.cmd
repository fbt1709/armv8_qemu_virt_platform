cmd_tools/generated/lib/sha256_common.o := cc -Wp,-MMD,tools/generated/lib/.sha256_common.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE  -c -o tools/generated/lib/sha256_common.o tools/generated/lib/sha256_common.c

source_tools/generated/lib/sha256_common.o := tools/generated/lib/sha256_common.c

deps_tools/generated/lib/sha256_common.o := \
  include/compiler.h \
  tools/../lib/sha256_common.c \
    $(wildcard include/config/hw/watchdog.h) \
    $(wildcard include/config/watchdog.h) \

tools/generated/lib/sha256_common.o: $(deps_tools/generated/lib/sha256_common.o)

$(deps_tools/generated/lib/sha256_common.o):
