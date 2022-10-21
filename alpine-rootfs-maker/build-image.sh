#!/bin/sh

set -o errexit

./alpine-make-vm-image/alpine-make-vm-image --script-chroot --image-size 256M --image-format raw alpine-rootfs.ext4 -- ./setup.sh

mv alpine-rootfs.ext4 ../alpine-rootfs.ext4
