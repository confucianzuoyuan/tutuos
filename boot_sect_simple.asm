; A simple boot sector program that loops forever
; 无限循环
loop:
    jmp loop

; Fill with 510 zeros minus the size of the previous code
times 510-($-$$) db 0
; Magic number
; To make sure that the "disk is bootable", the BIOS checks that bytes 511 and 512 of the alleged boot sector are bytes `0xAA55`.
; x86 is little-endian
dw 0xaa55

