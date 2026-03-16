cmd_tools/generated/env/embedded.o := cc -Wp,-MMD,tools/generated/env/.embedded.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE  -c -o tools/generated/env/embedded.o tools/generated/env/embedded.c

source_tools/generated/env/embedded.o := tools/generated/env/embedded.c

deps_tools/generated/env/embedded.o := \
  include/compiler.h \
  tools/../env/embedded.c \
    $(wildcard include/config/env/addr/redund.h) \
    $(wildcard include/config/env/addr.h) \

tools/generated/env/embedded.o: $(deps_tools/generated/env/embedded.o)

$(deps_tools/generated/env/embedded.o):
