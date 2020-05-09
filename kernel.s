	.file	"timer.c"
	.text
.Ltext0:
	.globl	tick
	.section	.bss
	.align 4
	.type	tick, @object
	.size	tick, 4
tick:
	.zero	4
	.section	.rodata
.LC0:
	.string	"Tick: "
.LC1:
	.string	"\n"
	.text
	.type	timer_callback, @function
timer_callback:
.LFB0:
	.file 1 "cpu/timer.c"
	.loc 1 8 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$264, %esp
	.loc 1 9 0
	movl	tick, %eax
	incl	%eax
	movl	%eax, tick
	.loc 1 10 0
	subl	$12, %esp
	pushl	$.LC0
	call	kprint
	addl	$16, %esp
	.loc 1 13 0
	movl	tick, %eax
	movl	%eax, %edx
	subl	$8, %esp
	leal	-264(%ebp), %eax
	pushl	%eax
	pushl	%edx
	call	int_to_ascii
	addl	$16, %esp
	.loc 1 14 0
	subl	$12, %esp
	leal	-264(%ebp), %eax
	pushl	%eax
	call	kprint
	addl	$16, %esp
	.loc 1 15 0
	subl	$12, %esp
	pushl	$.LC1
	call	kprint
	addl	$16, %esp
	.loc 1 16 0
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	timer_callback, .-timer_callback
	.globl	init_timer
	.type	init_timer, @function
init_timer:
.LFB1:
	.loc 1 18 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 20 0
	subl	$8, %esp
	pushl	$timer_callback
	pushl	$32
	call	register_interrupt_handler
	addl	$16, %esp
	.loc 1 23 0
	movl	$1193180, %eax
	movl	$0, %edx
	divl	8(%ebp)
	movl	%eax, -12(%ebp)
	.loc 1 24 0
	movl	-12(%ebp), %eax
	movb	%al, -13(%ebp)
	.loc 1 25 0
	movl	-12(%ebp), %eax
	shrl	$8, %eax
	movb	%al, -14(%ebp)
	.loc 1 27 0
	subl	$8, %esp
	pushl	$54
	pushl	$67
	call	port_byte_out
	addl	$16, %esp
	.loc 1 28 0
	movzbl	-13(%ebp), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$64
	call	port_byte_out
	addl	$16, %esp
	.loc 1 29 0
	movzbl	-14(%ebp), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$64
	call	port_byte_out
	addl	$16, %esp
	.loc 1 30 0
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	init_timer, .-init_timer
.Letext0:
	.file 2 "cpu/../kernel/../cpu/types.h"
	.file 3 "cpu/isr.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1e8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF16
	.byte	0xc
	.long	.LASF17
	.long	.LASF18
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.string	"u32"
	.byte	0x2
	.byte	0x6
	.long	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF2
	.uleb128 0x2
	.string	"u8"
	.byte	0x2
	.byte	0xa
	.long	0x56
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x5
	.byte	0x40
	.byte	0x3
	.byte	0x4b
	.long	0x12a
	.uleb128 0x6
	.string	"ds"
	.byte	0x3
	.byte	0x4c
	.long	0x25
	.byte	0
	.uleb128 0x6
	.string	"edi"
	.byte	0x3
	.byte	0x4d
	.long	0x25
	.byte	0x4
	.uleb128 0x6
	.string	"esi"
	.byte	0x3
	.byte	0x4d
	.long	0x25
	.byte	0x8
	.uleb128 0x6
	.string	"ebp"
	.byte	0x3
	.byte	0x4d
	.long	0x25
	.byte	0xc
	.uleb128 0x6
	.string	"esp"
	.byte	0x3
	.byte	0x4d
	.long	0x25
	.byte	0x10
	.uleb128 0x6
	.string	"ebx"
	.byte	0x3
	.byte	0x4d
	.long	0x25
	.byte	0x14
	.uleb128 0x6
	.string	"edx"
	.byte	0x3
	.byte	0x4d
	.long	0x25
	.byte	0x18
	.uleb128 0x6
	.string	"ecx"
	.byte	0x3
	.byte	0x4d
	.long	0x25
	.byte	0x1c
	.uleb128 0x6
	.string	"eax"
	.byte	0x3
	.byte	0x4d
	.long	0x25
	.byte	0x20
	.uleb128 0x7
	.long	.LASF5
	.byte	0x3
	.byte	0x4e
	.long	0x25
	.byte	0x24
	.uleb128 0x7
	.long	.LASF6
	.byte	0x3
	.byte	0x4e
	.long	0x25
	.byte	0x28
	.uleb128 0x6
	.string	"eip"
	.byte	0x3
	.byte	0x4f
	.long	0x25
	.byte	0x2c
	.uleb128 0x6
	.string	"cs"
	.byte	0x3
	.byte	0x4f
	.long	0x25
	.byte	0x30
	.uleb128 0x7
	.long	.LASF7
	.byte	0x3
	.byte	0x4f
	.long	0x25
	.byte	0x34
	.uleb128 0x7
	.long	.LASF8
	.byte	0x3
	.byte	0x4f
	.long	0x25
	.byte	0x38
	.uleb128 0x6
	.string	"ss"
	.byte	0x3
	.byte	0x4f
	.long	0x25
	.byte	0x3c
	.byte	0
	.uleb128 0x8
	.long	.LASF9
	.byte	0x3
	.byte	0x50
	.long	0x64
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x8
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x168
	.uleb128 0xa
	.long	.LASF11
	.byte	0x1
	.byte	0x8
	.long	0x12a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.long	.LASF13
	.byte	0x1
	.byte	0xc
	.long	0x168
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0xc
	.long	0x5d
	.long	0x178
	.uleb128 0xd
	.long	0x178
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0xe
	.long	.LASF20
	.byte	0x1
	.byte	0x12
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x1da
	.uleb128 0xa
	.long	.LASF12
	.byte	0x1
	.byte	0x12
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.long	.LASF14
	.byte	0x1
	.byte	0x17
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"low"
	.byte	0x1
	.byte	0x18
	.long	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0xb
	.long	.LASF15
	.byte	0x1
	.byte	0x19
	.long	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x10
	.long	.LASF21
	.byte	0x1
	.byte	0x1b
	.long	0x37
	.uleb128 0x11
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF22
	.byte	0x1
	.byte	0x6
	.long	0x25
	.uleb128 0x5
	.byte	0x3
	.long	tick
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x18
	.byte	0
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
.LASF17:
	.string	"cpu/timer.c"
.LASF0:
	.string	"unsigned int"
.LASF3:
	.string	"unsigned char"
.LASF20:
	.string	"init_timer"
.LASF15:
	.string	"high"
.LASF6:
	.string	"err_code"
.LASF7:
	.string	"eflags"
.LASF13:
	.string	"tick_ascii"
.LASF21:
	.string	"port_byte_out"
.LASF22:
	.string	"tick"
.LASF16:
	.string	"GNU C11 5.2.0 -mtune=i386 -march=i386 -g -ffreestanding"
.LASF11:
	.string	"regs"
.LASF8:
	.string	"useresp"
.LASF19:
	.string	"timer_callback"
.LASF1:
	.string	"short unsigned int"
.LASF9:
	.string	"registers_t"
.LASF12:
	.string	"freq"
.LASF10:
	.string	"sizetype"
.LASF18:
	.string	"/home/parallels/tutuos"
.LASF14:
	.string	"divisor"
.LASF2:
	.string	"short int"
.LASF5:
	.string	"int_no"
.LASF4:
	.string	"char"
	.ident	"GCC: (GNU) 5.2.0"
