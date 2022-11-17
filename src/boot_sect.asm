[org 0x7c00]

mov bp, 0x8000
mov sp, bp


mov ax, welcome_string
%include 'print.asm'
call print_str

jmp $ ; Jump to the current address ( i.e. forever ).
;
; Padding and magic BIOS number.
;


welcome_string:
    db 'Welcome to Yoaz OS', 0 


times 510 -( $ - $$ ) db 0 ; Pad the boot sector out with zeros
dw 0xaa55 ; Last two bytes form the magic number ,
; so BIOS knows we are a boot sector.
