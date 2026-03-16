cmd_arch/arm/lib/asm-offsets.s := aarch64-linux-gnu-gcc -Wp,-MMD,arch/arm/lib/.asm-offsets.s.d -nostdinc -isystem /usr/lib/gcc-cross/aarch64-linux-gnu/13/include -Iinclude "-DMBEDTLS_CONFIG_FILE=\"mbedtls_def_config.h\"" -I./lib/mbedtls -I./lib/mbedtls/port -I./lib/mbedtls/external/mbedtls -I./lib/mbedtls/external/mbedtls/include -I./arch/arm/include -include ./include/linux/kconfig.h -I./dts/upstream/include -D__KERNEL__ -D__UBOOT__ -Wall -Werror=strict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE -Werror=implicit-function-declaration -Werror=implicit-int -Wno-format-security -std=gnu11 -ffreestanding -fno-builtin -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -Wno-address-of-packed-member -Os -fno-stack-protector -fno-delete-null-pointer-checks -Wno-zero-length-bounds -Wno-array-bounds -Wno-stringop-overflow -Wno-maybe-uninitialized -fmacro-prefix-map=./= -gdwarf-4 -fstack-usage -Wno-format-nonliteral -Wno-address-of-packed-member -Wno-unused-but-set-variable -Wno-unused-but-set-variable -Werror=date-time -Wno-packed-not-aligned -Wno-pointer-sign -Wno-stringop-truncation -fno-strict-overflow -D__ARM__ -fno-pic -mstrict-align -ffunction-sections -fdata-sections -fno-common -ffixed-x18 -mgeneral-regs-only -mbranch-protection=none -pipe -march=armv8-a+crc -D__LINUX_ARM_ARCH__=8 -DDO_DEPS_ONLY -DKBUILD_MODFILE='"./asm-offsets"' -DKBUILD_BASENAME='"asm_offsets"' -DKBUILD_MODNAME='"asm_offsets"' -D__KBUILD_MODNAME=kmod_asm_offsets -fverbose-asm -S -o arch/arm/lib/asm-offsets.s arch/arm/lib/asm-offsets.c

source_arch/arm/lib/asm-offsets.s := arch/arm/lib/asm-offsets.c

deps_arch/arm/lib/asm-offsets.s := \
    $(wildcard include/config/mx51.h) \
    $(wildcard include/config/mx53.h) \
    $(wildcard include/config/arm/smccc.h) \
    $(wildcard include/config/arm64.h) \
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
  include/linux/kbuild.h \
  include/linux/arm-smccc.h \
  include/linux/linkage.h \
  arch/arm/include/asm/linkage.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/cc/has/asm/inline.h) \
  include/linux/compiler_attributes.h \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/retpoline.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  arch/arm/include/asm/posix_types.h \
  arch/arm/include/asm/types.h \
    $(wildcard include/config/phys/64bit.h) \
    $(wildcard include/config/dma/addr/t/64bit.h) \
  include/asm-generic/int-ll64.h \

arch/arm/lib/asm-offsets.s: $(deps_arch/arm/lib/asm-offsets.s)

$(deps_arch/arm/lib/asm-offsets.s):
