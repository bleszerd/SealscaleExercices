mov ah, 0x0e

mov al, 'S' ; AX => 0x0e000000 0x48000000
int 0x10
mov al, 'e'
int 0x10
mov al, 'a'
int 0x10
mov al, 'l'
int 0x10
mov al, 's'
int 0x10
mov al, 'c'
int 0x10
mov al, 'a'
int 0x10
mov al, 'l'
int 0x10
mov al, 'e'
int 0x10
mov al, 'O'
int 0x10
mov al, 'S'
int 0x10
mov al, '!'
int 0x10

jmp $

times 510-($-$$) db 0
dw 0xAA55
