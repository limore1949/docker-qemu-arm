# termux folder (remove if you aren't using proot-distro)
export PREFIX=/data/data/com.termux/files/usr

qemu-system-x86_64 -machine q35 -m 1024 -smp cpus=2 -cpu qemu64 \
  -drive if=pflash,format=raw,read-only=on,file=$PREFIX/share/qemu/edk2-x86_64-code.fd \
  -netdev user,id=n1,hostfwd=tcp::2222-:22,net=192.168.50.0/24,hostfwd=tcp::9000-:9000,hostfwd=tcp::8081-:80,hostfwd=tcp::8090-:8090,hostfwd=tcp::8080-:8080,hostfwd=tcp::5244-:5244,hostfwd=tcp::5700-:5700,hostfwd=tcp::5200-:5200,hostfwd=tcp::5201-:5201,hostfwd=tcp::5202-:5202,hostfwd=tcp::5203-:5203,hostfwd=tcp::5204-:5204,hostfwd=tcp::5205-:5205,hostfwd=tcp::5206-:5206,hostfwd=tcp::5207-:5207,hostfwd=tcp::5208-:5208,hostfwd=tcp::5209-:5209,hostfwd=tcp::5210-:5210,hostfwd=tcp::5211-:5211,hostfwd=tcp::5212-:5212,hostfwd=tcp::5213-:5213,hostfwd=tcp::5214-:5214,hostfwd=tcp::5215-:5215,hostfwd=tcp::5216-:5216,hostfwd=tcp::5217-:5217,hostfwd=tcp::5218-:5218,hostfwd=tcp::5219-:5219,hostfwd=tcp::5220-:5220 -device virtio-net,netdev=n1 \
  -nographic alpine.img
