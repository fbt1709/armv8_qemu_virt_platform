cmd_tools/relocate-rela := cc -Wp,-MMD,tools/.relocate-rela.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE    -o tools/relocate-rela tools/relocate-rela.c   

source_tools/relocate-rela := tools/relocate-rela.c

deps_tools/relocate-rela := \
  include/compiler.h \

tools/relocate-rela: $(deps_tools/relocate-rela)

$(deps_tools/relocate-rela):
