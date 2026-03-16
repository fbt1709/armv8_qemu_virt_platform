cmd_tools/pbl_crc32.o := cc -Wp,-MMD,tools/.pbl_crc32.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE  -c -o tools/pbl_crc32.o tools/pbl_crc32.c

source_tools/pbl_crc32.o := tools/pbl_crc32.c

deps_tools/pbl_crc32.o := \
  include/compiler.h \
  tools/pblimage.h \

tools/pbl_crc32.o: $(deps_tools/pbl_crc32.o)

$(deps_tools/pbl_crc32.o):
