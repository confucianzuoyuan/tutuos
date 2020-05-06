; `0x0e` on `ah` tells the video interrupt that the actual function we want to run is to 'write the contents of `al` in tty mode'.
mov ah, 0x0e ; tty mode
mov al, 'H'
; raise interrupt `0x10` which is a general interrupt for video services
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10 ; 'l' is still on al, remember?
mov al, 'o'
int 0x10

jmp $ ; jump to current address = infinite loop

; padding and magic number
times 510 - ($-$$) db 0
dw 0xaa55 

