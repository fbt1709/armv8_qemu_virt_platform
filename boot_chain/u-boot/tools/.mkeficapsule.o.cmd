cmd_tools/mkeficapsule.o := cc -Wp,-MMD,tools/.mkeficapsule.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE -I/usr/include/p11-kit-1  -c -o tools/mkeficapsule.o tools/mkeficapsule.c

source_tools/mkeficapsule.o := tools/mkeficapsule.c

deps_tools/mkeficapsule.o := \
    $(wildcard include/config/efi/capsule/namespace/guid.h) \
  include/compiler.h \
  scripts/dtc/libfdt/libfdt.h \
  scripts/dtc/libfdt/libfdt_env.h \
  scripts/dtc/libfdt/fdt.h \
  tools/eficapsule.h \

tools/mkeficapsule.o: $(deps_tools/mkeficapsule.o)

$(deps_tools/mkeficapsule.o):
