[org 0x7c00]

mov ah , 0x0e ; int 10/ ah = 0eh -> scrolling teletype BIOS routine

mov cx, 0x0000
loop_print_welcome:
    mov bx, welcome_string
    add bx, cx
    mov al, [bx]
    cmp al, 0x00,
    je  loop_end
    int 0x10
    add cx, 0x0001
    jmp loop_print_welcome

loop_end:

jmp $ ; Jump to the current address ( i.e. forever ).
;
; Padding and magic BIOS number.
;


welcome_string:
    db 'Welcometo Yoaz OS'


times 510 -( $ - $$ ) db 0 ; Pad the boot sector out with zeros
dw 0xaa55 ; Last two bytes form the magic number ,
; so BIOS knows we are a boot sector.
