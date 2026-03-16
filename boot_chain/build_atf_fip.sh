#!/bin/sh
set -e

CROSS=aarch64-linux-gnu-
TFA_DIR=/home/fbt1709/armv8_env_test/boot_chain/trusted-firmware-a
UBOOT_BIN=/home/fbt1709/armv8_env_test/boot_chain/u-boot/u-boot.bin
TFABUILD=/home/fbt1709/armv8_env_test/boot_chain/trusted-firmware-a/build/qemu/debug
FLASH_BIN=$TFABUILD/flash.bin

cd "$TFA_DIR"
rm -rf build/qemu
# 构建 BL1/BL2/BL31 镜像 + 证书 + FIP
make PLAT=qemu ARCH=aarch64 DEBUG=1 \
     LOG_LEVEL=50 \
     TRUSTED_BOARD_BOOT=1 \
     GENERATE_COT=1 \
     MBEDTLS_DIR=../mbedtls \
     MBEDTLS_INCLUDE_DIR=../mbedtls/include \
     MBEDTLS_LIB_DIR=../mbedtls/library \
     CROSS_COMPILE=aarch64-linux-gnu- \
     BL33=/home/fbt1709/armv8_env_test/boot_chain/u-boot/u-boot.bin \
     ROT_KEY=/home/fbt1709/armv8_env_test/boot_chain/trusted-firmware-a/keys/root_key.pem \
     TRUSTED_WORLD_KEY=/home/fbt1709/armv8_env_test/boot_chain/trusted-firmware-a/keys/bl31_key.pem \
     SOC_FW_CONTENT_CERT_KEY=/home/fbt1709/armv8_env_test/boot_chain/trusted-firmware-a/keys/bl2_key.pem \
     NON_TRUSTED_FW_CONTENT_CERT_KEY=/home/fbt1709/armv8_env_test/boot_chain/trusted-firmware-a/keys/bl33_key.pem \
     bl1 bl2 bl31 certificates fip

cd "$TFABUILD"
rm -f "$FLASH_BIN"
# BL1 at start
dd if=bl1.bin of="$FLASH_BIN" bs=4096 conv=notrunc
# FIP at 0x40000 (64 * 4KB)
dd if=fip.bin of="$FLASH_BIN" bs=4096 seek=64 conv=notrunc
