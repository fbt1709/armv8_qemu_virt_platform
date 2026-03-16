cmd_tools/spl_size_limit := cc -Wp,-MMD,tools/.spl_size_limit.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE    -o tools/spl_size_limit tools/spl_size_limit.c   

source_tools/spl_size_limit := tools/spl_size_limit.c

deps_tools/spl_size_limit := \
    $(wildcard include/config/spl/size/limit.h) \
    $(wildcard include/config/imx/hab.h) \
    $(wildcard include/config/csf/size.h) \
    $(wildcard include/config/spl/size/limit/subtract/gd.h) \
    $(wildcard include/config/spl/size/limit/subtract/malloc.h) \
    $(wildcard include/config/spl/sys/malloc/f/len.h) \
    $(wildcard include/config/spl/size/limit/provide/stack.h) \
  include/compiler.h \

tools/spl_size_limit: $(deps_tools/spl_size_limit)

$(deps_tools/spl_size_limit):
