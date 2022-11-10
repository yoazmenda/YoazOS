REM build the boot source into a a bootable image file
nasm.exe boot_sect.asm -f bin -o boot_sect.bin

REM run x86 emulator with a flooppy disk comtaining this image
qemu-system-i386  -fda boot_sect.bin -D log.txt