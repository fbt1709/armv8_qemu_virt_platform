#!/bin/sh
# ARMv8 QEMU + Ubuntu Base 磁盘 rootfs

DIR="${0%/*}"
[ -z "$DIR" ] && DIR=.
cd "$DIR" || exit 1

exec qemu-system-aarch64 \
  -machine virt,gic-version=3,virtualization=on \
  -cpu cortex-a57 \
  -smp 4 \
  -m 2048 \
  -nographic \
  -kernel kernel/linux-6.12/arch/arm64/boot/Image \
  -drive if=none,file=disk_rootfs/debian-arm64.img,format=raw,id=vd0 \
  -device virtio-blk-pci,drive=vd0 \
  -netdev user,id=net0 \
  -device virtio-net-pci,netdev=net0 \
  -append "console=ttyAMA0 root=/dev/vda1 rw init=/etc/rc.local"
