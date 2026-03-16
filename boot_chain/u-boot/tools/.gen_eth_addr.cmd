cmd_tools/gen_eth_addr := cc -Wp,-MMD,tools/.gen_eth_addr.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE -pedantic   -o tools/gen_eth_addr tools/gen_eth_addr.c   

source_tools/gen_eth_addr := tools/gen_eth_addr.c

deps_tools/gen_eth_addr := \
  include/compiler.h \

tools/gen_eth_addr: $(deps_tools/gen_eth_addr)

$(deps_tools/gen_eth_addr):
