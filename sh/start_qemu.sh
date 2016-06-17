cd /home/shuai/Desktop

qemu-system-x86_64        -enable-kvm        -cpu host        -smp 4       \
 -hda litmus.img        -m 1024        -name "ubuntu-qemu-cjk"        -nographic       \
 -kernel /home/shuai/Desktop/litmus-rt/arch/x86/boot/bzImage       -append "console=ttyS0,115200 root=/dev/sda1"  \
 -gdb tcp::12345  \
 -vga std 	\
 -netdev type=user,id=net0,hostfwd=::2222-:22  \
 -device virtio-net-pci,netdev=net0,mac="52:54:00:12:34:56" 
