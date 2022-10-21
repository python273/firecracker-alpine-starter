# firecracker-alpine-starter
## Running alpine in firecracker

```bash
sh download-firecracker.sh
sh download-kernel.sh

cd alpine-rootfs-maker/
sh clone-alpine-make-vm-image.sh

sudo apt install qemu-utils

sudo sh build-image.sh
cd ..

sudo sh start-firecracker.sh

# another term
sudo sh start-alpine.sh
```
