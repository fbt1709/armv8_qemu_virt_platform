cmd_tools/generated/lib/crc32.o := cc -Wp,-MMD,tools/generated/lib/.crc32.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE -pedantic -c -o tools/generated/lib/crc32.o tools/generated/lib/crc32.c

source_tools/generated/lib/crc32.o := tools/generated/lib/crc32.c

deps_tools/generated/lib/crc32.o := \
  include/compiler.h \
  tools/../lib/crc32.c \
    $(wildcard include/config/hw/watchdog.h) \
    $(wildcard include/config/watchdog.h) \
    $(wildcard include/config/dynamic/crc/table.h) \
    $(wildcard include/config/arm64/crc32.h) \

tools/generated/lib/crc32.o: $(deps_tools/generated/lib/crc32.o)

$(deps_tools/generated/lib/crc32.o):
