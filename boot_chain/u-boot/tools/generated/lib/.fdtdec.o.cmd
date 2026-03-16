cmd_tools/generated/lib/fdtdec.o := cc -Wp,-MMD,tools/generated/lib/.fdtdec.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -DCONFIG_FIT_SIGNATURE -DCONFIG_FIT_SIGNATURE_MAX_SIZE=0xffffffff -DCONFIG_FIT_CIPHER -include ./include/compiler.h -idirafterinclude -idirafter./lib/mbedtls -idirafter./lib/mbedtls/port -idirafter./lib/mbedtls/external/mbedtls -idirafter./lib/mbedtls/external/mbedtls/include -idirafter./arch/arm/include -idirafter./dts/upstream/include -I./scripts/dtc/libfdt -I./tools -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE  -c -o tools/generated/lib/fdtdec.o tools/generated/lib/fdtdec.c

source_tools/generated/lib/fdtdec.o := tools/generated/lib/fdtdec.c

deps_tools/generated/lib/fdtdec.o := \
  include/compiler.h \
  tools/../lib/fdtdec.c \
    $(wildcard include/config/of/embed.h) \
    $(wildcard include/config/xpl/build.h) \
    $(wildcard include/config/of/translate.h) \
    $(wildcard include/config/phandle/check/seq.h) \
    $(wildcard include/config/nr/dram/banks.h) \
    $(wildcard include/config/multi/dtb/fit/gzip.h) \
    $(wildcard include/config/multi/dtb/fit/lzo.h) \
    $(wildcard include/config/multi/dtb/fit/uncompress/sz.h) \
    $(wildcard include/config/gzip.h) \
    $(wildcard include/config/lzo.h) \
    $(wildcard include/config/multi/dtb/fit/dyn/alloc.h) \
    $(wildcard include/config/multi/dtb/fit/user/defined/area.h) \
    $(wildcard include/config/multi/dtb/fit/user/def/addr.h) \
    $(wildcard include/config/sandbox.h) \
    $(wildcard include/config/separate/bss.h) \
    $(wildcard include/config/multi/dtb/fit.h) \
    $(wildcard include/config/bloblist.h) \
    $(wildcard include/config/tpl/bloblist.h) \
    $(wildcard include/config/of/separate.h) \
    $(wildcard include/config/of/board.h) \

tools/generated/lib/fdtdec.o: $(deps_tools/generated/lib/fdtdec.o)

$(deps_tools/generated/lib/fdtdec.o):
