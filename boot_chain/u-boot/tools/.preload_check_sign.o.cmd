cmd_tools/preload_check_sign.o := cc -Wp,-MMD,tools/.preload_check_sign.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE  -c -o tools/preload_check_sign.o tools/preload_check_sign.c

source_tools/preload_check_sign.o := tools/preload_check_sign.c

deps_tools/preload_check_sign.o := \
  include/compiler.h \

tools/preload_check_sign.o: $(deps_tools/preload_check_sign.o)

$(deps_tools/preload_check_sign.o):
