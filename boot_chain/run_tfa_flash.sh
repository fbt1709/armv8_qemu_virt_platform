#!/bin/sh
set -e

FLASH_BIN=/home/fbt1709/armv8_env_test/boot_chain/trusted-firmware-a/build/qemu/debug/flash.bin
DISK_IMG=/home/fbt1709/armv8_env_test/disk_rootfs/debian-arm64.img

exec qemu-system-aarch64 \
  -machine virt,secure=on,gic-version=2,virtualization=on \
  -cpu cortex-a57 -smp 4 -m 2048 -nographic \
  -bios "$FLASH_BIN" \
  -drive if=none,file="$DISK_IMG",format=raw,id=vd0 \
  -device virtio-blk-pci,drive=vd0 \
  -netdev user,id=net0 \
  -virtfs local,path=/home/fbt1709/armv8_env_test/boot_chain/qemu_share,mount_tag=hostshare,security_model=none,id=hostshare \
  -device virtio-net-pci,netdev=net0
