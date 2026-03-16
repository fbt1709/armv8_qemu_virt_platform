cmd_tools/generated/lib/fdt-libcrypto.o := cc -Wp,-MMD,tools/generated/lib/.fdt-libcrypto.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE  -c -o tools/generated/lib/fdt-libcrypto.o tools/generated/lib/fdt-libcrypto.c

source_tools/generated/lib/fdt-libcrypto.o := tools/generated/lib/fdt-libcrypto.c

deps_tools/generated/lib/fdt-libcrypto.o := \
  include/compiler.h \
  tools/../lib/fdt-libcrypto.c \
  scripts/dtc/libfdt/libfdt.h \
  scripts/dtc/libfdt/libfdt_env.h \
  scripts/dtc/libfdt/fdt.h \

tools/generated/lib/fdt-libcrypto.o: $(deps_tools/generated/lib/fdt-libcrypto.o)

$(deps_tools/generated/lib/fdt-libcrypto.o):
