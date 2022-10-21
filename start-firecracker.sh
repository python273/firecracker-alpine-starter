echo "Removing previous unix socket"
rm /tmp/firecracker.socket

echo "Starting firecracker"
./firecracker --api-sock /tmp/firecracker.socket
