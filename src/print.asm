; assume ax is a pointer to a null terminaed string
print_str:
    pusha
    mov bx, ax ; ax will be needed or int10
    mov ah , 0x0e ; int 10/ ah = 0eh -> scrolling teletype BIOS routine
loop:    
    mov cx, [bx]
    cmp cl, 0x0
    je loop_end
    mov al, cl
    int 0x10
    add bx, 1
    jmp loop
loop_end:
    popa
    ret