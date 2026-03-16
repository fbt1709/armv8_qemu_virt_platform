cmd_tools/generated/lib/uuid.o := cc -Wp,-MMD,tools/generated/lib/.uuid.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE  -c -o tools/generated/lib/uuid.o tools/generated/lib/uuid.c

source_tools/generated/lib/uuid.o := tools/generated/lib/uuid.c

deps_tools/generated/lib/uuid.o := \
  include/compiler.h \
  tools/../lib/uuid.c \
    $(wildcard include/config/efi/partition.h) \
    $(wildcard include/config/cmd/efidebug.h) \
    $(wildcard include/config/efi/client.h) \
    $(wildcard include/config/efi/http/protocol.h) \
    $(wildcard include/config/efi/riscv/boot/protocol.h) \
    $(wildcard include/config/cmd/nvedit/efi.h) \
    $(wildcard include/config/partition/type/guid.h) \
    $(wildcard include/config/random/uuid.h) \
    $(wildcard include/config/cmd/uuid.h) \
    $(wildcard include/config/dm/rng.h) \
    $(wildcard include/config/xpl/build.h) \
    $(wildcard include/config/sys/maxargs.h) \
  tools/eficapsule.h \

tools/generated/lib/uuid.o: $(deps_tools/generated/lib/uuid.o)

$(deps_tools/generated/lib/uuid.o):
