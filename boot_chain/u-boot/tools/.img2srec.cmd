cmd_tools/img2srec := cc -Wp,-MMD,tools/.img2srec.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE -pedantic   -o tools/img2srec tools/img2srec.c   

source_tools/img2srec := tools/img2srec.c

deps_tools/img2srec := \
  include/compiler.h \
  tools/os_support.h \

tools/img2srec: $(deps_tools/img2srec)

$(deps_tools/img2srec):
