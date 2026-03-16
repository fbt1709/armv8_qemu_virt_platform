cmd_arch/arm/cpu/armv8/start.o := aarch64-linux-gnu-gcc -Wp,-MMD,arch/arm/cpu/armv8/.start.o.d -nostdinc -isystem /usr/lib/gcc-cross/aarch64-linux-gnu/13/include -Iinclude   "-DMBEDTLS_CONFIG_FILE=\"mbedtls_def_config.h\"" -I./lib/mbedtls -I./lib/mbedtls/port -I./lib/mbedtls/external/mbedtls -I./lib/mbedtls/external/mbedtls/include  -I./arch/arm/include -include ./include/linux/kconfig.h -I./dts/upstream/include  -D__KERNEL__ -D__UBOOT__ -D__ASSEMBLY__ -fno-PIE -gdwarf-4 -D__ARM__ -fno-pic -mstrict-align -ffunction-sections -fdata-sections -fno-common -ffixed-x18 -mgeneral-regs-only -mbranch-protection=none -pipe -march=armv8-a+crc -D__LINUX_ARM_ARCH__=8    -c -o arch/arm/cpu/armv8/start.o arch/arm/cpu/armv8/start.S 

source_arch/arm/cpu/armv8/start.o := arch/arm/cpu/armv8/start.S

deps_arch/arm/cpu/armv8/start.o := \
    $(wildcard include/config/linux/kernel/image/header.h) \
    $(wildcard include/config/enable/arm/soc/boot0/hook.h) \
    $(wildcard include/config/text/base.h) \
    $(wildcard include/config/position/independent.h) \
    $(wildcard include/config/xpl/build.h) \
    $(wildcard include/config/armv8/spl/exception/vectors.h) \
    $(wildcard include/config/counter/frequency.h) \
    $(wildcard include/config/armv8/set/smpen.h) \
    $(wildcard include/config/armv8/spin/table.h) \
    $(wildcard include/config/acpi/parking/protocol.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/armv8/multientry.h) \
    $(wildcard include/config/arm/errata/855873.h) \
    $(wildcard include/config/arm/errata/828024.h) \
    $(wildcard include/config/arm/errata/826974.h) \
    $(wildcard include/config/arm/errata/833471.h) \
    $(wildcard include/config/arm/errata/829520.h) \
    $(wildcard include/config/arm/errata/833069.h) \
    $(wildcard include/config/gicv2.h) \
    $(wildcard include/config/gicv3.h) \
    $(wildcard include/config/armv8/psci.h) \
    $(wildcard include/config/armv8/switch/to/el1.h) \
    $(wildcard include/config/bloblist.h) \
  include/linux/kconfig.h \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/spl/.h) \
    $(wildcard include/config/tpl/.h) \
    $(wildcard include/config/tools/.h) \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/vpl/build.h) \
    $(wildcard include/config/tools/foo.h) \
    $(wildcard include/config/spl/foo.h) \
    $(wildcard include/config/tpl/foo.h) \
    $(wildcard include/config/vpl/foo.h) \
    $(wildcard include/config/option.h) \
    $(wildcard include/config/acme.h) \
    $(wildcard include/config/spl/acme.h) \
    $(wildcard include/config/tpl/acme.h) \
    $(wildcard include/config/if/enabled/int.h) \
    $(wildcard include/config/int/option.h) \
  include/asm-offsets.h \
  include/generated/generic-asm-offsets.h \
  include/config.h \
  include/configs/qemu-arm.h \
  arch/arm/include/asm/config.h \
    $(wildcard include/config/arch/ls1021a.h) \
    $(wildcard include/config/fsl/layerscape.h) \
  include/linux/kconfig.h \
  include/config_fallbacks.h \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/spl/max/size.h) \
  include/linux/linkage.h \
  arch/arm/include/asm/linkage.h \
  arch/arm/include/asm/macro.h \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/armv8/ea/el3/first.h) \
  arch/arm/include/asm/system.h \
    $(wildcard include/config/armv7/lpae.h) \
    $(wildcard include/config/cpu/v7a.h) \
    $(wildcard include/config/armv7/psci.h) \
    $(wildcard include/config/sys/arm/cache/writethrough.h) \
    $(wildcard include/config/sys/arm/cache/writealloc.h) \
    $(wildcard include/config/sys/arm/cache/writeback.h) \
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
  arch/arm/include/asm/barriers.h \
  arch/arm/include/asm/armv8/mmu.h \
  include/hang.h \
    $(wildcard include/config/panic/hang.h) \
  include/linux/const.h \

arch/arm/cpu/armv8/start.o: $(deps_arch/arm/cpu/armv8/start.o)

$(deps_arch/arm/cpu/armv8/start.o):
