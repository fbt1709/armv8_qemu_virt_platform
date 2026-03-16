cmd_common/autoboot.o := aarch64-linux-gnu-gcc -Wp,-MMD,common/.autoboot.o.d -nostdinc -isystem /usr/lib/gcc-cross/aarch64-linux-gnu/13/include -Iinclude   "-DMBEDTLS_CONFIG_FILE=\"mbedtls_def_config.h\"" -I./lib/mbedtls -I./lib/mbedtls/port -I./lib/mbedtls/external/mbedtls -I./lib/mbedtls/external/mbedtls/include  -I./arch/arm/include -include ./include/linux/kconfig.h -I./dts/upstream/include  -D__KERNEL__ -D__UBOOT__ -Wall -Werror=strict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE -Werror=implicit-function-declaration -Werror=implicit-int -Wno-format-security -std=gnu11 -ffreestanding -fno-builtin -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -Wno-address-of-packed-member -Os -fno-stack-protector -fno-delete-null-pointer-checks -Wno-zero-length-bounds -Wno-array-bounds -Wno-stringop-overflow -Wno-maybe-uninitialized -fmacro-prefix-map=./= -gdwarf-4 -fstack-usage -Wno-format-nonliteral -Wno-address-of-packed-member -Wno-unused-but-set-variable -Wno-unused-but-set-variable -Werror=date-time -Wno-packed-not-aligned -Wno-pointer-sign -Wno-stringop-truncation -fno-strict-overflow -D__ARM__ -fno-pic -mstrict-align -ffunction-sections -fdata-sections -fno-common -ffixed-x18 -mgeneral-regs-only -mbranch-protection=none -pipe -march=armv8-a+crc -D__LINUX_ARM_ARCH__=8    -DKBUILD_MODFILE='"common/autoboot"' -DKBUILD_BASENAME='"autoboot"' -DKBUILD_MODNAME='"autoboot"' -D__KBUILD_MODNAME=kmod_autoboot -c -o common/autoboot.o common/autoboot.c  

source_common/autoboot.o := common/autoboot.c

deps_common/autoboot.o := \
    $(wildcard include/config/autoboot/stop/str/crypt.h) \
    $(wildcard include/config/autoboot/stop/str/sha256.h) \
    $(wildcard include/config/autoboot/use/menukey.h) \
    $(wildcard include/config/autoboot/menukey.h) \
    $(wildcard include/config/autoboot/never/timeout.h) \
    $(wildcard include/config/autoboot/stop/str/enable.h) \
    $(wildcard include/config/autoboot/delay/str.h) \
    $(wildcard include/config/autoboot/stop/str.h) \
    $(wildcard include/config/autoboot/sha256/fallback.h) \
    $(wildcard include/config/crypt/pw.h) \
    $(wildcard include/config/autoboot/flush/stdin.h) \
    $(wildcard include/config/autoboot/prompt.h) \
    $(wildcard include/config/autoboot/encryption.h) \
    $(wildcard include/config/silent/console.h) \
    $(wildcard include/config/text/base.h) \
    $(wildcard include/config/bootdelay.h) \
    $(wildcard include/config/of/control.h) \
    $(wildcard include/config/autoboot/menu/show.h) \
    $(wildcard include/config/post.h) \
    $(wildcard include/config/autoboot/keyed/ctrlc.h) \
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
  include/ansi.h \
  include/autoboot.h \
    $(wildcard include/config/sandbox.h) \
    $(wildcard include/config/autoboot/keyed.h) \
    $(wildcard include/config/autoboot.h) \
  include/bootretry.h \
    $(wildcard include/config/boot/retry/time.h) \
  include/cli.h \
    $(wildcard include/config/sys/cbsize.h) \
    $(wildcard include/config/cmdline/editing.h) \
    $(wildcard include/config/auto/complete.h) \
    $(wildcard include/config/sys/maxargs.h) \
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
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/phys/64bit.h) \
    $(wildcard include/config/dma/addr/t/64bit.h) \
  include/asm-generic/int-ll64.h \
  include/command.h \
    $(wildcard include/config/sys/longhelp.h) \
    $(wildcard include/config/cmd/run.h) \
    $(wildcard include/config/cmd/memory.h) \
    $(wildcard include/config/cmd/i2c.h) \
    $(wildcard include/config/cmd/itest.h) \
    $(wildcard include/config/cmd/pci.h) \
    $(wildcard include/config/cmd/setexpr.h) \
    $(wildcard include/config/cmd/bootd.h) \
    $(wildcard include/config/cmd/bootm.h) \
    $(wildcard include/config/cmd/nvedit/efi.h) \
    $(wildcard include/config/cmdline.h) \
  include/linker_lists.h \
    $(wildcard include/config/linker/list/align.h) \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  include/linux/kernel.h \
  include/linux/printk.h \
    $(wildcard include/config/loglevel.h) \
    $(wildcard include/config/log.h) \
  include/log.h \
    $(wildcard include/config/log/max/level.h) \
    $(wildcard include/config/logf/func.h) \
    $(wildcard include/config/panic/hang.h) \
    $(wildcard include/config/log/error/return.h) \
    $(wildcard include/config/logf/file.h) \
    $(wildcard include/config/logf/line.h) \
  include/stdio.h \
    $(wildcard include/config/serial.h) \
    $(wildcard include/config/console/flush/support.h) \
  include/dm/uclass-id.h \
  include/linux/bitops.h \
    $(wildcard include/config/sandbox/bits/per/long.h) \
  include/asm-generic/bitsperlong.h \
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
  include/limits.h \
    $(wildcard include/config/64bit.h) \
    $(wildcard include/config/spl/64bit.h) \
  include/console.h \
    $(wildcard include/config/console/record.h) \
    $(wildcard include/config/video/ansi.h) \
    $(wildcard include/config/console/mux.h) \
  include/stdio_dev.h \
  include/linux/errno.h \
  include/iomux.h \
  include/env.h \
    $(wildcard include/config/env/import/fdt.h) \
  include/compiler.h \
  include/linux/string.h \
  arch/arm/include/asm/string.h \
    $(wildcard include/config/use/arch/memcpy.h) \
    $(wildcard include/config/use/arch/memmove.h) \
    $(wildcard include/config/use/arch/memset.h) \
  include/linux/linux_string.h \
  arch/arm/include/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/linux/byteorder/swab.h \
  include/linux/byteorder/generic.h \
  include/errno.h \
    $(wildcard include/config/errno/str.h) \
  include/fdtdec.h \
    $(wildcard include/config/fdt/64bit.h) \
    $(wildcard include/config/of/embed.h) \
    $(wildcard include/config/of/board.h) \
  include/linux/libfdt.h \
  include/linux/libfdt_env.h \
  include/vsprintf.h \
  include/linux/../../scripts/dtc/libfdt/libfdt.h \
  include/linux/../../scripts/dtc/libfdt/libfdt_env.h \
  include/linux/../../scripts/dtc/libfdt/fdt.h \
  include/pci.h \
    $(wildcard include/config/sys/pci/64bit.h) \
    $(wildcard include/config/dm/pci/compat.h) \
    $(wildcard include/config/mpc85xx.h) \
    $(wildcard include/config/pci/sriov.h) \
  include/pci_ids.h \
  include/dm/pci.h \
  include/hash.h \
    $(wildcard include/config/sha384.h) \
    $(wildcard include/config/sha512.h) \
  include/malloc.h \
    $(wildcard include/config/sys/malloc/simple.h) \
    $(wildcard include/config/valgrind.h) \
  include/memalign.h \
  arch/arm/include/asm/cache.h \
    $(wildcard include/config/sys/cacheline/size.h) \
  arch/arm/include/asm/system.h \
    $(wildcard include/config/armv8/psci.h) \
    $(wildcard include/config/armv7/lpae.h) \
    $(wildcard include/config/cpu/v7a.h) \
    $(wildcard include/config/armv7/psci.h) \
    $(wildcard include/config/sys/arm/cache/writethrough.h) \
    $(wildcard include/config/sys/arm/cache/writealloc.h) \
    $(wildcard include/config/sys/arm/cache/writeback.h) \
  arch/arm/include/asm/barriers.h \
  include/menu.h \
  include/post.h \
    $(wildcard include/config/arch/mpc8360.h) \
    $(wildcard include/config/sys/immr.h) \
  arch/arm/include/asm/io.h \
    $(wildcard include/config/kvm/virt/ins.h) \
    $(wildcard include/config/sys/dcache/off.h) \
  arch/arm/include/asm/memory.h \
    $(wildcard include/config/discontigmem.h) \
  include/cpu_func.h \
  include/asm-generic/io.h \
  include/iotrace.h \
    $(wildcard include/config/io/trace.h) \
  include/time.h \
  include/linux/typecheck.h \
  arch/arm/include/asm/global_data.h \
    $(wildcard include/config/fsl/esdhc.h) \
    $(wildcard include/config/fsl/esdhc/imx.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/u/qe.h) \
    $(wildcard include/config/at91family.h) \
    $(wildcard include/config/sys/icache/off.h) \
    $(wildcard include/config/resv/ram.h) \
    $(wildcard include/config/arch/omap2plus.h) \
    $(wildcard include/config/fsl/lsch3.h) \
    $(wildcard include/config/sys/fsl/has/dp/ddr.h) \
    $(wildcard include/config/arch/imx8.h) \
    $(wildcard include/config/imx/ele.h) \
    $(wildcard include/config/arch/imx8ulp.h) \
    $(wildcard include/config/smbios.h) \
  arch/arm/include/asm/u-boot.h \
  include/asm-generic/u-boot.h \
    $(wildcard include/config/arm.h) \
    $(wildcard include/config/mpc8xx.h) \
    $(wildcard include/config/e500.h) \
    $(wildcard include/config/mpc86xx.h) \
    $(wildcard include/config/m68k.h) \
    $(wildcard include/config/mpc83xx.h) \
    $(wildcard include/config/extra/clock.h) \
    $(wildcard include/config/nr/dram/banks.h) \
  arch/arm/include/asm/u-boot-arm.h \
  include/asm-generic/global_data.h \
    $(wildcard include/config/env/support.h) \
    $(wildcard include/config/board/types.h) \
    $(wildcard include/config/pre/console/buffer.h) \
    $(wildcard include/config/dm.h) \
    $(wildcard include/config/of/platdata/driver/rt.h) \
    $(wildcard include/config/of/platdata/rt.h) \
    $(wildcard include/config/timer.h) \
    $(wildcard include/config/of/live.h) \
    $(wildcard include/config/multi/dtb/fit.h) \
    $(wildcard include/config/trace.h) \
    $(wildcard include/config/sys/i2c/legacy.h) \
    $(wildcard include/config/cmd/bdinfo/extra.h) \
    $(wildcard include/config/sys/malloc/f.h) \
    $(wildcard include/config/video.h) \
    $(wildcard include/config/bootstage.h) \
    $(wildcard include/config/bloblist.h) \
    $(wildcard include/config/handoff.h) \
    $(wildcard include/config/translation/offset.h) \
    $(wildcard include/config/generate/smbios/table.h) \
    $(wildcard include/config/event.h) \
    $(wildcard include/config/cyclic.h) \
    $(wildcard include/config/upl.h) \
    $(wildcard include/config/event/dynamic.h) \
    $(wildcard include/config/sys/malloc/f/len.h) \
    $(wildcard include/config/trace/buffer/size.h) \
  include/board_f.h \
  include/event_internal.h \
  include/event.h \
    $(wildcard include/config/event/debug.h) \
  include/dm/ofnode_decl.h \
  include/membuf.h \
  include/linux/build_bug.h \
  include/asm-offsets.h \
  include/generated/generic-asm-offsets.h \
  include/linux/delay.h \
  include/u-boot/sha256.h \
    $(wildcard include/config/mbedtls/lib/crypto.h) \
    $(wildcard include/config/hkdf/mbedtls.h) \
  lib/mbedtls/port/mbedtls_options.h \
  lib/mbedtls/external/mbedtls/include/mbedtls/sha256.h \
  lib/mbedtls/external/mbedtls/include/mbedtls/private_access.h \
  lib/mbedtls/external/mbedtls/include/mbedtls/build_info.h \
  lib/mbedtls/mbedtls_def_config.h \
    $(wildcard include/config/mbedtls/lib.h) \
    $(wildcard include/config/md5.h) \
    $(wildcard include/config/mbedtls/lib/hashing/alt.h) \
    $(wildcard include/config/sha1.h) \
    $(wildcard include/config/sha256.h) \
    $(wildcard include/config/sha256/smaller.h) \
    $(wildcard include/config/sha512/smaller.h) \
    $(wildcard include/config/mbedtls/lib/x509.h) \
    $(wildcard include/config/x509/certificate/parser.h) \
    $(wildcard include/config/asymmetric/public/key/subtype.h) \
    $(wildcard include/config/rsa/public/key/parser.h) \
    $(wildcard include/config/pkcs7/message/parser.h) \
    $(wildcard include/config/asn1/decoder.h) \
    $(wildcard include/config/mbedtls/lib/tls.h) \
  lib/mbedtls/external/mbedtls/include/mbedtls/config_adjust_legacy_crypto.h \
  lib/mbedtls/external/mbedtls/include/mbedtls/config_adjust_x509.h \
  lib/mbedtls/external/mbedtls/include/mbedtls/config_adjust_ssl.h \
  lib/mbedtls/external/mbedtls/include/mbedtls/check_config.h \
  include/stdint.h \
  include/bootcount.h \
    $(wildcard include/config/dm/bootcount.h) \
    $(wildcard include/config/spl/bootcount/limit.h) \
    $(wildcard include/config/tpl/bootcount/limit.h) \
    $(wildcard include/config/bootcount/limit.h) \
    $(wildcard include/config/sys/bootcount/le.h) \
  include/crypt.h \
  include/dm/ofnode.h \
    $(wildcard include/config/ofnode/multi/tree.h) \
    $(wildcard include/config/dm/inline/ofnode.h) \
  include/dm/of.h \
  include/dm/of_access.h \
  include/phy_interface.h \
    $(wildcard include/config/arch/lx2160a.h) \
    $(wildcard include/config/arch/lx2162a.h) \
    $(wildcard include/config/phy/ncsi.h) \
  include/string.h \

common/autoboot.o: $(deps_common/autoboot.o)

$(deps_common/autoboot.o):
