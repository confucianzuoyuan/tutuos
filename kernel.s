	.file	"ports.c"
	.text
.Ltext0:
	.globl	port_byte_in
	.type	port_byte_in, @function
port_byte_in:
.LFB0:
	.file 1 "drivers/ports.c"
	.loc 1 4 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	movl	8(%ebp), %eax
	movw	%ax, -20(%ebp)
	.loc 1 14 0
	movl	-20(%ebp), %eax
	movl	%eax, %edx
/APP
/  14 "drivers/ports.c" 1
	in %dx, %al
/  0 "" 2
/NO_APP
	movb	%al, -1(%ebp)
	.loc 1 15 0
	movb	-1(%ebp), %al
	.loc 1 16 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	port_byte_in, .-port_byte_in
	.globl	port_byte_out
	.type	port_byte_out, @function
port_byte_out:
.LFB1:
	.loc 1 18 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movw	%ax, -4(%ebp)
	movb	%dl, -8(%ebp)
	.loc 1 24 0
	movb	-8(%ebp), %al
	movl	-4(%ebp), %edx
/APP
/  24 "drivers/ports.c" 1
	out %al, %dx
/  0 "" 2
	.loc 1 25 0
/NO_APP
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	port_byte_out, .-port_byte_out
	.globl	port_word_in
	.type	port_word_in, @function
port_word_in:
.LFB2:
	.loc 1 27 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	movl	8(%ebp), %eax
	movw	%ax, -20(%ebp)
	.loc 1 29 0
	movl	-20(%ebp), %eax
	movl	%eax, %edx
/APP
/  29 "drivers/ports.c" 1
	in %dx, %ax
/  0 "" 2
/NO_APP
	movw	%ax, -2(%ebp)
	.loc 1 30 0
	movw	-2(%ebp), %ax
	.loc 1 31 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	port_word_in, .-port_word_in
	.globl	port_word_out
	.type	port_word_out, @function
port_word_out:
.LFB3:
	.loc 1 33 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movw	%dx, -4(%ebp)
	movw	%ax, -8(%ebp)
	.loc 1 34 0
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
/APP
/  34 "drivers/ports.c" 1
	out %ax, %dx
/  0 "" 2
	.loc 1 35 0
/NO_APP
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	port_word_out, .-port_word_out
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xfc
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF7
	.byte	0xc
	.long	.LASF8
	.long	.LASF9
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF4
	.byte	0x1
	.byte	0x4
	.long	0x5b
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b
	.uleb128 0x3
	.long	.LASF2
	.byte	0x1
	.byte	0x4
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.long	.LASF6
	.byte	0x1
	.byte	0x5
	.long	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x6
	.long	.LASF10
	.byte	0x1
	.byte	0x12
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x9b
	.uleb128 0x3
	.long	.LASF2
	.byte	0x1
	.byte	0x12
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x3
	.long	.LASF3
	.byte	0x1
	.byte	0x12
	.long	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x2
	.long	.LASF5
	.byte	0x1
	.byte	0x1b
	.long	0x62
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xd1
	.uleb128 0x3
	.long	.LASF2
	.byte	0x1
	.byte	0x1b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.long	.LASF6
	.byte	0x1
	.byte	0x1c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x7
	.long	.LASF11
	.byte	0x1
	.byte	0x21
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.long	.LASF2
	.byte	0x1
	.byte	0x21
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x3
	.long	.LASF3
	.byte	0x1
	.byte	0x21
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x2117
	.uleb128 0x19
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
.LASF9:
	.string	"/home/parallels/tutuos"
.LASF0:
	.string	"unsigned char"
.LASF4:
	.string	"port_byte_in"
.LASF1:
	.string	"short unsigned int"
.LASF6:
	.string	"result"
.LASF7:
	.string	"GNU C11 5.2.0 -mtune=i386 -march=i386 -g -ffreestanding"
.LASF8:
	.string	"drivers/ports.c"
.LASF5:
	.string	"port_word_in"
.LASF2:
	.string	"port"
.LASF3:
	.string	"data"
.LASF11:
	.string	"port_word_out"
.LASF10:
	.string	"port_byte_out"
	.ident	"GCC: (GNU) 5.2.0"
