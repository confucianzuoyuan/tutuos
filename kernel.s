	.file	"keyboard.c"
	.text
.Ltext0:
	.local	key_buffer
	.comm	key_buffer,256,32
	.globl	sc_name
	.section	.rodata
.LC0:
	.string	"ERROR"
.LC1:
	.string	"Esc"
.LC2:
	.string	"1"
.LC3:
	.string	"2"
.LC4:
	.string	"3"
.LC5:
	.string	"4"
.LC6:
	.string	"5"
.LC7:
	.string	"6"
.LC8:
	.string	"7"
.LC9:
	.string	"8"
.LC10:
	.string	"9"
.LC11:
	.string	"0"
.LC12:
	.string	"-"
.LC13:
	.string	"="
.LC14:
	.string	"Backspace"
.LC15:
	.string	"Tab"
.LC16:
	.string	"Q"
.LC17:
	.string	"W"
.LC18:
	.string	"E"
.LC19:
	.string	"R"
.LC20:
	.string	"T"
.LC21:
	.string	"Y"
.LC22:
	.string	"U"
.LC23:
	.string	"I"
.LC24:
	.string	"O"
.LC25:
	.string	"P"
.LC26:
	.string	"["
.LC27:
	.string	"]"
.LC28:
	.string	"Enter"
.LC29:
	.string	"Lctrl"
.LC30:
	.string	"A"
.LC31:
	.string	"S"
.LC32:
	.string	"D"
.LC33:
	.string	"F"
.LC34:
	.string	"G"
.LC35:
	.string	"H"
.LC36:
	.string	"J"
.LC37:
	.string	"K"
.LC38:
	.string	"L"
.LC39:
	.string	";"
.LC40:
	.string	"'"
.LC41:
	.string	"`"
.LC42:
	.string	"LShift"
.LC43:
	.string	"\\"
.LC44:
	.string	"Z"
.LC45:
	.string	"X"
.LC46:
	.string	"C"
.LC47:
	.string	"V"
.LC48:
	.string	"B"
.LC49:
	.string	"N"
.LC50:
	.string	"M"
.LC51:
	.string	","
.LC52:
	.string	"."
.LC53:
	.string	"/"
.LC54:
	.string	"RShift"
.LC55:
	.string	"Keypad *"
.LC56:
	.string	"LAlt"
.LC57:
	.string	"Spacebar"
	.data
	.align 32
	.type	sc_name, @object
	.size	sc_name, 232
sc_name:
	.long	.LC0
	.long	.LC1
	.long	.LC2
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.long	.LC8
	.long	.LC9
	.long	.LC10
	.long	.LC11
	.long	.LC12
	.long	.LC13
	.long	.LC14
	.long	.LC15
	.long	.LC16
	.long	.LC17
	.long	.LC18
	.long	.LC19
	.long	.LC20
	.long	.LC21
	.long	.LC22
	.long	.LC23
	.long	.LC24
	.long	.LC25
	.long	.LC26
	.long	.LC27
	.long	.LC28
	.long	.LC29
	.long	.LC30
	.long	.LC31
	.long	.LC32
	.long	.LC33
	.long	.LC34
	.long	.LC35
	.long	.LC36
	.long	.LC37
	.long	.LC38
	.long	.LC39
	.long	.LC40
	.long	.LC41
	.long	.LC42
	.long	.LC43
	.long	.LC44
	.long	.LC45
	.long	.LC46
	.long	.LC47
	.long	.LC48
	.long	.LC49
	.long	.LC50
	.long	.LC51
	.long	.LC52
	.long	.LC53
	.long	.LC54
	.long	.LC55
	.long	.LC56
	.long	.LC57
	.globl	sc_ascii
	.section	.rodata
	.align 32
	.type	sc_ascii, @object
	.size	sc_ascii, 58
sc_ascii:
	.byte	63
	.byte	63
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	48
	.byte	45
	.byte	61
	.byte	63
	.byte	63
	.byte	81
	.byte	87
	.byte	69
	.byte	82
	.byte	84
	.byte	89
	.byte	85
	.byte	73
	.byte	79
	.byte	80
	.byte	91
	.byte	93
	.byte	63
	.byte	63
	.byte	65
	.byte	83
	.byte	68
	.byte	70
	.byte	71
	.byte	72
	.byte	74
	.byte	75
	.byte	76
	.byte	59
	.byte	39
	.byte	96
	.byte	63
	.byte	92
	.byte	90
	.byte	88
	.byte	67
	.byte	86
	.byte	66
	.byte	78
	.byte	77
	.byte	44
	.byte	46
	.byte	47
	.byte	63
	.byte	63
	.byte	63
	.byte	32
.LC58:
	.string	"\n"
	.text
	.type	keyboard_callback, @function
keyboard_callback:
.LFB0:
	.file 1 "drivers/keyboard.c"
	.loc 1 28 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 30 0
	subl	$12, %esp
	pushl	$96
	call	port_byte_in
	addl	$16, %esp
	movb	%al, -9(%ebp)
	.loc 1 32 0
	cmpb	$57, -9(%ebp)
	ja	.L6
	.loc 1 33 0
	cmpb	$14, -9(%ebp)
	jne	.L4
	.loc 1 34 0
	subl	$12, %esp
	pushl	$key_buffer
	call	backspace
	addl	$16, %esp
	.loc 1 35 0
	call	kprint_backspace
	jmp	.L1
.L4:
	.loc 1 36 0
	cmpb	$28, -9(%ebp)
	jne	.L5
	.loc 1 37 0
	subl	$12, %esp
	pushl	$.LC58
	call	kprint
	addl	$16, %esp
	.loc 1 38 0
	subl	$12, %esp
	pushl	$key_buffer
	call	user_input
	addl	$16, %esp
	.loc 1 39 0
	movb	$0, key_buffer
	jmp	.L1
.L5:
.LBB2:
	.loc 1 41 0 discriminator 2
	movzbl	-9(%ebp), %eax
	movb	sc_ascii(%eax), %al
	movb	%al, -10(%ebp)
	.loc 1 43 0 discriminator 2
	movb	-10(%ebp), %al
	movb	%al, -12(%ebp)
	movb	$0, -11(%ebp)
	.loc 1 44 0 discriminator 2
	movsbl	-10(%ebp), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$key_buffer
	call	append
	addl	$16, %esp
	.loc 1 45 0 discriminator 2
	subl	$12, %esp
	leal	-12(%ebp), %eax
	pushl	%eax
	call	kprint
	addl	$16, %esp
	jmp	.L1
.L6:
.LBE2:
	.loc 1 32 0
	nop
.L1:
	.loc 1 48 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	keyboard_callback, .-keyboard_callback
	.globl	init_keyboard
	.type	init_keyboard, @function
init_keyboard:
.LFB1:
	.loc 1 50 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 51 0
	subl	$8, %esp
	pushl	$keyboard_callback
	pushl	$33
	call	register_interrupt_handler
	addl	$16, %esp
	.loc 1 52 0
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	init_keyboard, .-init_keyboard
.Letext0:
	.file 2 "/home/parallels/Desktop/i386-elf-gcc/lib/gcc/i386-elf/5.2.0/include/stdint-gcc.h"
	.file 3 "drivers/../cpu/isr.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x24f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF23
	.byte	0xc
	.long	.LASF24
	.long	.LASF25
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF3
	.uleb128 0x3
	.long	.LASF6
	.byte	0x2
	.byte	0x2e
	.long	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF7
	.byte	0x2
	.byte	0x34
	.long	0x65
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x40
	.byte	0x3
	.byte	0x51
	.long	0x147
	.uleb128 0x6
	.string	"ds"
	.byte	0x3
	.byte	0x52
	.long	0x5a
	.byte	0
	.uleb128 0x6
	.string	"edi"
	.byte	0x3
	.byte	0x53
	.long	0x5a
	.byte	0x4
	.uleb128 0x6
	.string	"esi"
	.byte	0x3
	.byte	0x53
	.long	0x5a
	.byte	0x8
	.uleb128 0x6
	.string	"ebp"
	.byte	0x3
	.byte	0x53
	.long	0x5a
	.byte	0xc
	.uleb128 0x7
	.long	.LASF11
	.byte	0x3
	.byte	0x53
	.long	0x5a
	.byte	0x10
	.uleb128 0x6
	.string	"ebx"
	.byte	0x3
	.byte	0x53
	.long	0x5a
	.byte	0x14
	.uleb128 0x6
	.string	"edx"
	.byte	0x3
	.byte	0x53
	.long	0x5a
	.byte	0x18
	.uleb128 0x6
	.string	"ecx"
	.byte	0x3
	.byte	0x53
	.long	0x5a
	.byte	0x1c
	.uleb128 0x6
	.string	"eax"
	.byte	0x3
	.byte	0x53
	.long	0x5a
	.byte	0x20
	.uleb128 0x7
	.long	.LASF12
	.byte	0x3
	.byte	0x54
	.long	0x5a
	.byte	0x24
	.uleb128 0x7
	.long	.LASF13
	.byte	0x3
	.byte	0x54
	.long	0x5a
	.byte	0x28
	.uleb128 0x6
	.string	"eip"
	.byte	0x3
	.byte	0x55
	.long	0x5a
	.byte	0x2c
	.uleb128 0x6
	.string	"cs"
	.byte	0x3
	.byte	0x55
	.long	0x5a
	.byte	0x30
	.uleb128 0x7
	.long	.LASF14
	.byte	0x3
	.byte	0x55
	.long	0x5a
	.byte	0x34
	.uleb128 0x6
	.string	"esp"
	.byte	0x3
	.byte	0x55
	.long	0x5a
	.byte	0x38
	.uleb128 0x6
	.string	"ss"
	.byte	0x3
	.byte	0x55
	.long	0x5a
	.byte	0x3c
	.byte	0
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x56
	.long	0x81
	.uleb128 0x8
	.byte	0x4
	.long	0x147
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1
	.byte	0x1c
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b0
	.uleb128 0xa
	.long	.LASF27
	.byte	0x1
	.byte	0x1c
	.long	0x152
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.long	.LASF16
	.byte	0x1
	.byte	0x1e
	.long	0x41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0xc
	.long	.LBB2
	.long	.LBE2-.LBB2
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0x29
	.long	0x1b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0xd
	.string	"str"
	.byte	0x1
	.byte	0x2b
	.long	0x1b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF18
	.uleb128 0xe
	.long	0x1b0
	.long	0x1c7
	.uleb128 0xf
	.long	0x1c7
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF19
	.uleb128 0x10
	.long	.LASF28
	.byte	0x1
	.byte	0x32
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.long	0x1b0
	.long	0x1ef
	.uleb128 0xf
	.long	0x1c7
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.long	.LASF20
	.byte	0x1
	.byte	0xd
	.long	0x1df
	.uleb128 0x5
	.byte	0x3
	.long	key_buffer
	.uleb128 0xe
	.long	0x210
	.long	0x210
	.uleb128 0xf
	.long	0x1c7
	.byte	0x39
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x216
	.uleb128 0x11
	.long	0x1b0
	.uleb128 0x12
	.long	.LASF21
	.byte	0x1
	.byte	0x10
	.long	0x200
	.uleb128 0x5
	.byte	0x3
	.long	sc_name
	.uleb128 0xe
	.long	0x1b0
	.long	0x23c
	.uleb128 0xf
	.long	0x1c7
	.byte	0x39
	.byte	0
	.uleb128 0x12
	.long	.LASF22
	.byte	0x1
	.byte	0x16
	.long	0x24d
	.uleb128 0x5
	.byte	0x3
	.long	sc_ascii
	.uleb128 0x11
	.long	0x22c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"key_buffer"
.LASF11:
	.string	"useless"
.LASF25:
	.string	"/home/parallels/tutuos"
.LASF16:
	.string	"scancode"
.LASF21:
	.string	"sc_name"
.LASF22:
	.string	"sc_ascii"
.LASF4:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF27:
	.string	"regs"
.LASF23:
	.string	"GNU C11 5.2.0 -m32 -mtune=i386 -march=i386 -g -fno-exceptions -ffreestanding"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF6:
	.string	"uint8_t"
.LASF12:
	.string	"int_no"
.LASF28:
	.string	"init_keyboard"
.LASF15:
	.string	"registers_t"
.LASF26:
	.string	"keyboard_callback"
.LASF14:
	.string	"eflags"
.LASF19:
	.string	"sizetype"
.LASF3:
	.string	"long long int"
.LASF24:
	.string	"drivers/keyboard.c"
.LASF13:
	.string	"err_code"
.LASF1:
	.string	"short int"
.LASF7:
	.string	"uint32_t"
.LASF2:
	.string	"long int"
.LASF18:
	.string	"char"
.LASF17:
	.string	"letter"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (GNU) 5.2.0"
