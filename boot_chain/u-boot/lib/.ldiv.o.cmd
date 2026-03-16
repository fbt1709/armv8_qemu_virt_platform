cmd_lib/ldiv.o := aarch64-linux-gnu-gcc -Wp,-MMD,lib/.ldiv.o.d -nostdinc -isystem /usr/lib/gcc-cross/aarch64-linux-gnu/13/include -Iinclude   "-DMBEDTLS_CONFIG_FILE=\"mbedtls_def_config.h\"" -I./lib/mbedtls -I./lib/mbedtls/port -I./lib/mbedtls/external/mbedtls -I./lib/mbedtls/external/mbedtls/include  -I./arch/arm/include -include ./include/linux/kconfig.h -I./dts/upstream/include  -D__KERNEL__ -D__UBOOT__ -Wall -Werror=strict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE -Werror=implicit-function-declaration -Werror=implicit-int -Wno-format-security -std=gnu11 -ffreestanding -fno-builtin -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -Wno-address-of-packed-member -Os -fno-stack-protector -fno-delete-null-pointer-checks -Wno-zero-length-bounds -Wno-array-bounds -Wno-stringop-overflow -Wno-maybe-uninitialized -fmacro-prefix-map=./= -gdwarf-4 -fstack-usage -Wno-format-nonliteral -Wno-address-of-packed-member -Wno-unused-but-set-variable -Wno-unused-but-set-variable -Werror=date-time -Wno-packed-not-aligned -Wno-pointer-sign -Wno-stringop-truncation -fno-strict-overflow -D__ARM__ -fno-pic -mstrict-align -ffunction-sections -fdata-sections -fno-common -ffixed-x18 -mgeneral-regs-only -mbranch-protection=none -pipe -march=armv8-a+crc -D__LINUX_ARM_ARCH__=8    -DKBUILD_MODFILE='"lib/ldiv"' -DKBUILD_BASENAME='"ldiv"' -DKBUILD_MODNAME='"ldiv"' -D__KBUILD_MODNAME=kmod_ldiv -c -o lib/ldiv.o lib/ldiv.c  

source_lib/ldiv.o := lib/ldiv.c

deps_lib/ldiv.o := \
  include/linux/kconfig.h \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/spl/.h) \
    $(wildcard include/config/tpl/.h) \
    $(wildcard include/config/tools/.h) \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/vpl/build.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/tools/foo.h) \
    $(wildcard include/config/xpl/build.h) \
    $(wildcard include/config/spl/foo.h) \
    $(wildcard include/config/tpl/foo.h) \
    $(wildcard include/config/vpl/foo.h) \
    $(wildcard include/config/option.h) \
    $(wildcard include/config/acme.h) \
    $(wildcard include/config/spl/acme.h) \
    $(wildcard include/config/tpl/acme.h) \
    $(wildcard include/config/if/enabled/int.h) \
    $(wildcard include/config/int/option.h) \

lib/ldiv.o: $(deps_lib/ldiv.o)

$(deps_lib/ldiv.o):
