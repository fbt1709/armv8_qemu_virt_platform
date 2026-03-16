cmd_tools/bmp_logo := cc -Wp,-MMD,tools/.bmp_logo.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE -pedantic   -o tools/bmp_logo tools/bmp_logo.c   

source_tools/bmp_logo := tools/bmp_logo.c

deps_tools/bmp_logo := \
  include/compiler.h \

tools/bmp_logo: $(deps_tools/bmp_logo)

$(deps_tools/bmp_logo):
