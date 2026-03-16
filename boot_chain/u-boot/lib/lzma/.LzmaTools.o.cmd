cmd_lib/lzma/LzmaTools.o := aarch64-linux-gnu-gcc -Wp,-MMD,lib/lzma/.LzmaTools.o.d -nostdinc -isystem /usr/lib/gcc-cross/aarch64-linux-gnu/13/include -Iinclude   "-DMBEDTLS_CONFIG_FILE=\"mbedtls_def_config.h\"" -I./lib/mbedtls -I./lib/mbedtls/port -I./lib/mbedtls/external/mbedtls -I./lib/mbedtls/external/mbedtls/include  -I./arch/arm/include -include ./include/linux/kconfig.h -I./dts/upstream/include  -D__KERNEL__ -D__UBOOT__ -Wall -Werror=strict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE -Werror=implicit-function-declaration -Werror=implicit-int -Wno-format-security -std=gnu11 -ffreestanding -fno-builtin -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -Wno-address-of-packed-member -Os -fno-stack-protector -fno-delete-null-pointer-checks -Wno-zero-length-bounds -Wno-array-bounds -Wno-stringop-overflow -Wno-maybe-uninitialized -fmacro-prefix-map=./= -gdwarf-4 -fstack-usage -Wno-format-nonliteral -Wno-address-of-packed-member -Wno-unused-but-set-variable -Wno-unused-but-set-variable -Werror=date-time -Wno-packed-not-aligned -Wno-pointer-sign -Wno-stringop-truncation -fno-strict-overflow -DZ7_LZMA_PROB32 -D__ARM__ -fno-pic -mstrict-align -ffunction-sections -fdata-sections -fno-common -ffixed-x18 -mgeneral-regs-only -mbranch-protection=none -pipe -march=armv8-a+crc -D__LINUX_ARM_ARCH__=8    -DKBUILD_MODFILE='"lib/lzma/LzmaTools"' -DKBUILD_BASENAME='"LzmaTools"' -DKBUILD_MODNAME='"LzmaTools"' -D__KBUILD_MODNAME=kmod_LzmaTools -c -o lib/lzma/LzmaTools.o lib/lzma/LzmaTools.c  

source_lib/lzma/LzmaTools.o := lib/lzma/LzmaTools.c

deps_lib/lzma/LzmaTools.o := \
    $(wildcard include/config/lzma.h) \
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
  include/config.h \
  include/configs/qemu-arm.h \
  arch/arm/include/asm/config.h \
    $(wildcard include/config/arch/ls1021a.h) \
    $(wildcard include/config/fsl/layerscape.h) \
  include/linux/kconfig.h \
  include/config_fallbacks.h \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/spl/max/size.h) \
  include/log.h \
    $(wildcard include/config/log.h) \
    $(wildcard include/config/log/max/level.h) \
    $(wildcard include/config/logf/func.h) \
    $(wildcard include/config/panic/hang.h) \
    $(wildcard include/config/log/error/return.h) \
    $(wildcard include/config/logf/file.h) \
    $(wildcard include/config/logf/line.h) \
  include/stdio.h \
    $(wildcard include/config/serial.h) \
    $(wildcard include/config/console/flush/support.h) \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/cc/has/asm/inline.h) \
  include/linux/compiler_attributes.h \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/retpoline.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  arch/arm/include/asm/posix_types.h \
  arch/arm/include/asm/types.h \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/phys/64bit.h) \
    $(wildcard include/config/dma/addr/t/64bit.h) \
  include/asm-generic/int-ll64.h \
  include/linker_lists.h \
    $(wildcard include/config/linker/list/align.h) \
  include/dm/uclass-id.h \
  include/linux/bitops.h \
    $(wildcard include/config/sandbox.h) \
    $(wildcard include/config/sandbox/bits/per/long.h) \
  include/asm-generic/bitsperlong.h \
  include/linux/kernel.h \
  include/linux/printk.h \
    $(wildcard include/config/loglevel.h) \
  include/limits.h \
    $(wildcard include/config/64bit.h) \
    $(wildcard include/config/spl/64bit.h) \
  arch/arm/include/asm/bitops.h \
    $(wildcard include/config/has/thumb2.h) \
    $(wildcard include/config/sys/thumb/build.h) \
  include/asm-generic/bitops/builtin-__fls.h \
  include/asm-generic/bitops/builtin-__ffs.h \
  include/asm-generic/bitops/builtin-fls.h \
  include/asm-generic/bitops/builtin-ffs.h \
  include/asm-generic/bitops/fls64.h \
  arch/arm/include/asm/proc-armv/system.h \
  include/linux/list.h \
  include/linux/poison.h \
  include/watchdog.h \
    $(wildcard include/config/watchdog.h) \
    $(wildcard include/config/hw/watchdog.h) \
  include/u-boot/schedule.h \
    $(wildcard include/config/cyclic.h) \
  include/uthread.h \
    $(wildcard include/config/uthread.h) \
  include/setjmp.h \
    $(wildcard include/config/have/setjmp.h) \
  arch/arm/include/asm/setjmp.h \
  lib/lzma/LzmaTools.h \
  include/lzma/LzmaTypes.h \
  include/lzma/../../lib/lzma/7zTypes.h \
  include/errno.h \
    $(wildcard include/config/errno/str.h) \
  include/linux/errno.h \
  include/stdint.h \
  lib/lzma/LzmaDec.h \
  lib/lzma/7zTypes.h \
  include/linux/string.h \
  arch/arm/include/asm/string.h \
    $(wildcard include/config/use/arch/memcpy.h) \
    $(wildcard include/config/use/arch/memmove.h) \
    $(wildcard include/config/use/arch/memset.h) \
  include/linux/linux_string.h \
  include/malloc.h \
    $(wildcard include/config/sys/malloc/simple.h) \
    $(wildcard include/config/valgrind.h) \

lib/lzma/LzmaTools.o: $(deps_lib/lzma/LzmaTools.o)

$(deps_lib/lzma/LzmaTools.o):
