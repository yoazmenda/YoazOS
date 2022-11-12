!#/bin/sh

mkdir -p out

nasm src/boot_sect.asm -f bin -o out/boot_sect.bin

qemu-system-i386 -fda out/boot_sect.bin
