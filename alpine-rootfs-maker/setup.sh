#!/bin/sh

apk add alpine-base util-linux linux-virt haveged e2fsprogs-extra
rc-update add haveged
echo root:root | chpasswd
for svc in devfs procfs sysfs; do ln -fs /etc/init.d/$svc /etc/runlevels/boot; done

ln -s agetty /etc/init.d/agetty.ttyS0
echo ttyS0 > /etc/securetty
echo 'agetty_options="--autologin root --noclear"' >> /etc/conf.d/agetty
rc-update add agetty.ttyS0 default

apk add python3 ripgrep
python3 -m ensurepip
