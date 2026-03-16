cmd_tools/generated/lib/abuf.o := cc -Wp,-MMD,tools/generated/lib/.abuf.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE  -c -o tools/generated/lib/abuf.o tools/generated/lib/abuf.c

source_tools/generated/lib/abuf.o := tools/generated/lib/abuf.c

deps_tools/generated/lib/abuf.o := \
  include/compiler.h \
  tools/../lib/abuf.c \

tools/generated/lib/abuf.o: $(deps_tools/generated/lib/abuf.o)

$(deps_tools/generated/lib/abuf.o):
