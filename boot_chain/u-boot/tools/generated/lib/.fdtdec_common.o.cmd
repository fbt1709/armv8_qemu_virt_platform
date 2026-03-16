cmd_tools/generated/lib/fdtdec_common.o := cc -Wp,-MMD,tools/generated/lib/.fdtdec_common.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE  -c -o tools/generated/lib/fdtdec_common.o tools/generated/lib/fdtdec_common.c

source_tools/generated/lib/fdtdec_common.o := tools/generated/lib/fdtdec_common.c

deps_tools/generated/lib/fdtdec_common.o := \
  include/compiler.h \
  tools/../lib/fdtdec_common.c \
  scripts/dtc/libfdt/libfdt.h \
  scripts/dtc/libfdt/libfdt_env.h \
  scripts/dtc/libfdt/fdt.h \

tools/generated/lib/fdtdec_common.o: $(deps_tools/generated/lib/fdtdec_common.o)

$(deps_tools/generated/lib/fdtdec_common.o):
