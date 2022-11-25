#!/usr/bin/env bash

cd lib
cd tinyemu-2019-12-21
make clean
make 
cd ../..

cp lib/tinyemu-2019-12-21/temu bin/temu
chmod +x bin/temu

mkdir -p out

nasm src/boot_sect.asm -f bin -o out/boot_sect.bin -isrc/

# qemu-system-i386 -hda out/boot_sect.bin

./bin/temu config.json