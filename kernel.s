	.file	"string.c"
	.text
.Ltext0:
	.globl	int_to_ascii
	.type	int_to_ascii, @function
int_to_ascii:
.LFB0:
	.file 1 "libc/string.c"
	.loc 1 6 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	.loc 1 8 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jns	.L2
	.loc 1 8 0 is_stmt 0 discriminator 1
	negl	8(%ebp)
.L2:
	.loc 1 9 0 is_stmt 1
	movl	$0, -12(%ebp)
.L3:
	.loc 1 11 0 discriminator 1
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movl	%eax, %edx
	movl	12(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	8(%ebp), %eax
	movl	$10, %ebx
	cltd
	idivl	%ebx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%ecx)
	.loc 1 12 0 discriminator 1
	movl	8(%ebp), %ecx
	movl	$1717986919, %eax
	imull	%ecx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, 8(%ebp)
	cmpl	$0, 8(%ebp)
	jg	.L3
	.loc 1 14 0
	cmpl	$0, -16(%ebp)
	jns	.L4
	.loc 1 14 0 is_stmt 0 discriminator 1
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movb	$45, (%eax)
.L4:
	.loc 1 15 0 is_stmt 1
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	.loc 1 17 0
	subl	$12, %esp
	pushl	12(%ebp)
	call	reverse
	addl	$16, %esp
	.loc 1 18 0
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	int_to_ascii, .-int_to_ascii
	.globl	reverse
	.type	reverse, @function
reverse:
.LFB1:
	.loc 1 21 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 23 0
	movl	$0, -12(%ebp)
	subl	$12, %esp
	pushl	8(%ebp)
	call	strlen
	addl	$16, %esp
	decl	%eax
	movl	%eax, -16(%ebp)
	jmp	.L6
.L7:
	.loc 1 24 0 discriminator 3
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movb	(%eax), %al
	movsbl	%al, %eax
	movl	%eax, -20(%ebp)
	.loc 1 25 0 discriminator 3
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %ecx
	movl	8(%ebp), %eax
	addl	%ecx, %eax
	movb	(%eax), %al
	movb	%al, (%edx)
	.loc 1 26 0 discriminator 3
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	-20(%ebp), %edx
	movb	%dl, (%eax)
	.loc 1 23 0 discriminator 3
	incl	-12(%ebp)
	decl	-16(%ebp)
.L6:
	.loc 1 23 0 is_stmt 0 discriminator 1
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L7
	.loc 1 28 0 is_stmt 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	reverse, .-reverse
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB2:
	.loc 1 31 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 32 0
	movl	$0, -4(%ebp)
	.loc 1 33 0
	jmp	.L9
.L10:
	.loc 1 33 0 is_stmt 0 discriminator 2
	incl	-4(%ebp)
.L9:
	.loc 1 33 0 discriminator 1
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movb	(%eax), %al
	testb	%al, %al
	jne	.L10
	.loc 1 34 0 is_stmt 1
	movl	-4(%ebp), %eax
	.loc 1 35 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	strlen, .-strlen
	.globl	append
	.type	append, @function
append:
.LFB3:
	.loc 1 37 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	movl	12(%ebp), %eax
	movb	%al, -20(%ebp)
	.loc 1 38 0
	pushl	8(%ebp)
	call	strlen
	addl	$4, %esp
	movl	%eax, -4(%ebp)
	.loc 1 39 0
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movb	-20(%ebp), %al
	movb	%al, (%edx)
	.loc 1 40 0
	movl	-4(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	.loc 1 41 0
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	append, .-append
	.globl	backspace
	.type	backspace, @function
backspace:
.LFB4:
	.loc 1 43 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 44 0
	pushl	8(%ebp)
	call	strlen
	addl	$4, %esp
	movl	%eax, -4(%ebp)
	.loc 1 45 0
	movl	-4(%ebp), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	.loc 1 46 0
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	backspace, .-backspace
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB5:
	.loc 1 50 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 52 0
	movl	$0, -4(%ebp)
	jmp	.L15
.L18:
	.loc 1 53 0
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movb	(%eax), %al
	testb	%al, %al
	jne	.L16
	.loc 1 53 0 is_stmt 0 discriminator 1
	movl	$0, %eax
	jmp	.L17
.L16:
	.loc 1 52 0 is_stmt 1 discriminator 2
	incl	-4(%ebp)
.L15:
	.loc 1 52 0 is_stmt 0 discriminator 1
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movb	(%eax), %dl
	movl	-4(%ebp), %ecx
	movl	12(%ebp), %eax
	addl	%ecx, %eax
	movb	(%eax), %al
	cmpb	%al, %dl
	je	.L18
	.loc 1 55 0 is_stmt 1
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movb	(%eax), %al
	movsbl	%al, %edx
	movl	-4(%ebp), %ecx
	movl	12(%ebp), %eax
	addl	%ecx, %eax
	movb	(%eax), %al
	movsbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
.L17:
	.loc 1 56 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	strcmp, .-strcmp
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1a0
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
	.long	.LASF2
	.byte	0x1
	.byte	0x6
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f
	.uleb128 0x3
	.string	"n"
	.byte	0x1
	.byte	0x6
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.string	"str"
	.byte	0x1
	.byte	0x6
	.long	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x4
	.string	"i"
	.byte	0x1
	.byte	0x7
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.long	.LASF0
	.byte	0x1
	.byte	0x7
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x4
	.long	0x7c
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x2
	.long	.LASF3
	.byte	0x1
	.byte	0x15
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0xc9
	.uleb128 0x3
	.string	"s"
	.byte	0x1
	.byte	0x15
	.long	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.string	"c"
	.byte	0x1
	.byte	0x16
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.string	"i"
	.byte	0x1
	.byte	0x16
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.string	"j"
	.byte	0x1
	.byte	0x16
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.long	.LASF10
	.byte	0x1
	.byte	0x1f
	.long	0x6f
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xfb
	.uleb128 0x3
	.string	"s"
	.byte	0x1
	.byte	0x1f
	.long	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.string	"i"
	.byte	0x1
	.byte	0x20
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2
	.long	.LASF4
	.byte	0x1
	.byte	0x25
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x137
	.uleb128 0x3
	.string	"s"
	.byte	0x1
	.byte	0x25
	.long	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.string	"n"
	.byte	0x1
	.byte	0x25
	.long	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.string	"len"
	.byte	0x1
	.byte	0x26
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2
	.long	.LASF5
	.byte	0x1
	.byte	0x2b
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x167
	.uleb128 0x3
	.string	"s"
	.byte	0x1
	.byte	0x2b
	.long	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.string	"len"
	.byte	0x1
	.byte	0x2c
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.long	.LASF6
	.byte	0x1
	.byte	0x32
	.long	0x6f
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.string	"s1"
	.byte	0x1
	.byte	0x32
	.long	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.string	"s2"
	.byte	0x1
	.byte	0x32
	.long	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x4
	.string	"i"
	.byte	0x1
	.byte	0x33
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
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
	.uleb128 0x3
	.uleb128 0x5
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
.LASF8:
	.string	"libc/string.c"
.LASF9:
	.string	"/home/parallels/tutuos"
.LASF2:
	.string	"int_to_ascii"
.LASF6:
	.string	"strcmp"
.LASF3:
	.string	"reverse"
.LASF4:
	.string	"append"
.LASF1:
	.string	"char"
.LASF7:
	.string	"GNU C11 5.2.0 -m32 -mtune=i386 -march=i386 -g -fno-builtin -fno-stack-protector -ffreestanding"
.LASF5:
	.string	"backspace"
.LASF10:
	.string	"strlen"
.LASF0:
	.string	"sign"
	.ident	"GCC: (GNU) 5.2.0"
