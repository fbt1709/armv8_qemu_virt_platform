cmd_tools/generated/lib/sha1.o := cc -Wp,-MMD,tools/generated/lib/.sha1.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE -pedantic -c -o tools/generated/lib/sha1.o tools/generated/lib/sha1.c

source_tools/generated/lib/sha1.o := tools/generated/lib/sha1.c

deps_tools/generated/lib/sha1.o := \
  include/compiler.h \
  tools/../lib/sha1.c \
    $(wildcard include/config/hw/watchdog.h) \
    $(wildcard include/config/watchdog.h) \

tools/generated/lib/sha1.o: $(deps_tools/generated/lib/sha1.o)

$(deps_tools/generated/lib/sha1.o):
