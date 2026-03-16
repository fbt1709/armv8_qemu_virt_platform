cmd_cmd/pxe.o := aarch64-linux-gnu-gcc -Wp,-MMD,cmd/.pxe.o.d -nostdinc -isystem /usr/lib/gcc-cross/aarch64-linux-gnu/13/include -Iinclude   "-DMBEDTLS_CONFIG_FILE=\"mbedtls_def_config.h\"" -I./lib/mbedtls -I./lib/mbedtls/port -I./lib/mbedtls/external/mbedtls -I./lib/mbedtls/external/mbedtls/include  -I./arch/arm/include -include ./include/linux/kconfig.h -I./dts/upstream/include  -D__KERNEL__ -D__UBOOT__ -Wall -Werror=strict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE -Werror=implicit-function-declaration -Werror=implicit-int -Wno-format-security -std=gnu11 -ffreestanding -fno-builtin -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -Wno-address-of-packed-member -Os -fno-stack-protector -fno-delete-null-pointer-checks -Wno-zero-length-bounds -Wno-array-bounds -Wno-stringop-overflow -Wno-maybe-uninitialized -fmacro-prefix-map=./= -gdwarf-4 -fstack-usage -Wno-format-nonliteral -Wno-address-of-packed-member -Wno-unused-but-set-variable -Wno-unused-but-set-variable -Werror=date-time -Wno-packed-not-aligned -Wno-pointer-sign -Wno-stringop-truncation -fno-strict-overflow -D__ARM__ -fno-pic -mstrict-align -ffunction-sections -fdata-sections -fno-common -ffixed-x18 -mgeneral-regs-only -mbranch-protection=none -pipe -march=armv8-a+crc -D__LINUX_ARM_ARCH__=8    -DKBUILD_MODFILE='"cmd/pxe"' -DKBUILD_BASENAME='"pxe"' -DKBUILD_MODNAME='"pxe"' -D__KBUILD_MODNAME=kmod_pxe -c -o cmd/pxe.o cmd/pxe.c  

source_cmd/pxe.o := cmd/pxe.c

deps_cmd/pxe.o := \
    $(wildcard include/config/sys/soc.h) \
    $(wildcard include/config/sys/board.h) \
    $(wildcard include/config/sys/arch.h) \
    $(wildcard include/config/bootp/pxe/dhcp/option.h) \
    $(wildcard include/config/dhcp6/pxe/dhcp/option.h) \
    $(wildcard include/config/ipv6.h) \
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
  include/command.h \
    $(wildcard include/config/sys/longhelp.h) \
    $(wildcard include/config/auto/complete.h) \
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
    $(wildcard include/config/sys/cbsize.h) \
    $(wildcard include/config/sys/maxargs.h) \
  include/linker_lists.h \
    $(wildcard include/config/linker/list/align.h) \
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
    $(wildcard include/config/sandbox.h) \
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
  include/fs.h \
    $(wildcard include/config/fs/exfat.h) \
  include/rtc_def.h \
  include/net.h \
    $(wildcard include/config/net/lwip.h) \
  include/net-common.h \
    $(wildcard include/config/sys/rx/eth/buffer.h) \
    $(wildcard include/config/dm/dsa.h) \
    $(wildcard include/config/dm/eth.h) \
    $(wildcard include/config/api.h) \
    $(wildcard include/config/efi/loader.h) \
    $(wildcard include/config/reset/phy/r.h) \
    $(wildcard include/config/net.h) \
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
  include/hexdump.h \
  include/linux/ctype.h \
  include/linux/if_ether.h \
  include/linux/sizes.h \
  include/linux/const.h \
  include/rand.h \
  include/time.h \
  include/linux/typecheck.h \
  include/net-legacy.h \
    $(wildcard include/config/bootp/dns2.h) \
    $(wildcard include/config/bootp/max/root/path/len.h) \
    $(wildcard include/config/dns.h) \
    $(wildcard include/config/cmd/ping.h) \
    $(wildcard include/config/cmd/cdp.h) \
    $(wildcard include/config/cmd/sntp.h) \
    $(wildcard include/config/netconsole.h) \
  include/net6.h \
    $(wildcard include/config/cmd/ping6.h) \
  include/linux/errno.h \
  include/malloc.h \
    $(wildcard include/config/sys/malloc/simple.h) \
    $(wildcard include/config/valgrind.h) \
  include/vsprintf.h \
  include/pxe_utils.h \
  include/bootflow.h \
    $(wildcard include/config/of/has/prior/stage.h) \
  include/alist.h \
  include/bootdev.h \
    $(wildcard include/config/bootstd.h) \
  include/image.h \
    $(wildcard include/config/timestamp.h) \
    $(wildcard include/config/cmd/date.h) \
    $(wildcard include/config/fit/signature.h) \
    $(wildcard include/config/libcrypto.h) \
    $(wildcard include/config/fit/cipher.h) \
  include/compiler.h \
  include/lmb.h \
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
  include/hash.h \
    $(wildcard include/config/sha384.h) \
    $(wildcard include/config/sha512.h) \
  include/linux/libfdt.h \
  include/linux/libfdt_env.h \
  include/linux/../../scripts/dtc/libfdt/libfdt.h \
  include/linux/../../scripts/dtc/libfdt/libfdt_env.h \
  include/linux/../../scripts/dtc/libfdt/fdt.h \
  include/fdt_support.h \
    $(wildcard include/config/arch/fixup/fdt/memory.h) \
    $(wildcard include/config/usb/ehci/fsl.h) \
    $(wildcard include/config/usb/xhci/fsl.h) \
    $(wildcard include/config/sys/fsl/sec/compat.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/sys/fdt/pad.h) \
    $(wildcard include/config/of/board/setup.h) \
    $(wildcard include/config/board/rng/seed.h) \
    $(wildcard include/config/of/board/setup/extended.h) \
    $(wildcard include/config/of/system/setup.h) \
    $(wildcard include/config/fdt/fixup/partitions.h) \
    $(wildcard include/config/fman/enet.h) \
    $(wildcard include/config/fsl/mc/enet.h) \
    $(wildcard include/config/cmd/pstore.h) \
  include/abuf.h \
  include/pci.h \
    $(wildcard include/config/sys/pci/64bit.h) \
    $(wildcard include/config/dm/pci/compat.h) \
    $(wildcard include/config/mpc85xx.h) \
    $(wildcard include/config/pci/sriov.h) \
  include/pci_ids.h \
  include/dm/pci.h \
  include/u-boot/hash-checksum.h \
  include/errno.h \
    $(wildcard include/config/errno/str.h) \
  include/u-boot/sha1.h \
    $(wildcard include/config/mbedtls/lib/crypto.h) \
  include/linux/kconfig.h \
  lib/mbedtls/port/mbedtls_options.h \
  lib/mbedtls/external/mbedtls/include/mbedtls/sha1.h \
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
    $(wildcard include/config/hkdf/mbedtls.h) \
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
  include/u-boot/sha256.h \
  lib/mbedtls/external/mbedtls/include/mbedtls/sha256.h \
  include/u-boot/sha512.h \
  lib/mbedtls/external/mbedtls/include/mbedtls/sha512.h \
  include/dm/ofnode_decl.h \
  include/linux/build_bug.h \

cmd/pxe.o: $(deps_cmd/pxe.o)

$(deps_cmd/pxe.o):
