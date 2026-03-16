cmd_tools/generated/lib/sha512.o := cc -Wp,-MMD,tools/generated/lib/.sha512.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE -pedantic -DCONFIG_SHA512 -DCONFIG_SHA384 -c -o tools/generated/lib/sha512.o tools/generated/lib/sha512.c

source_tools/generated/lib/sha512.o := tools/generated/lib/sha512.c

deps_tools/generated/lib/sha512.o := \
  include/compiler.h \
  tools/../lib/sha512.c \
    $(wildcard include/config/sha384.h) \
    $(wildcard include/config/hw/watchdog.h) \
    $(wildcard include/config/watchdog.h) \

tools/generated/lib/sha512.o: $(deps_tools/generated/lib/sha512.o)

$(deps_tools/generated/lib/sha512.o):
