#!/bin/sh
set -e

CROSS=aarch64-linux-gnu-
UBOOT_DIR=/home/fbt1709/armv8_env_test/boot_chain/u-boot

cd "$UBOOT_DIR"
make distclean || true
make CROSS_COMPILE=$CROSS qemu_arm64_defconfig
make -j"$(nproc)" CROSS_COMPILE=$CROSS
