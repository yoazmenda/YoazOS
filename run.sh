#!/usr/bin/env bash

mkdir -p out

nasm src/boot_sect.asm -f bin -o out/boot_sect.bin -isrc/

qemu-system-i386 -fda out/boot_sect.bin