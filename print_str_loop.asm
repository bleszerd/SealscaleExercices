[ORG 0x7c00]

mov ah, 0x0e
mov bx, hello_string

print_char:
    mov al, [bx]
    int 0x10
    jmp inc_stream_index

inc_stream_index:
    inc bx
    cmp al, 0
    jne print_char

jmp $

hello_string:
    db 'Sealscale OS!'

times 510-($-$$) db 0
dw 0xAA55