	.file	"idt.c"
	.text
.Ltext0:
	.comm	idt,2048,32
	.comm	idt_reg,6,4
	.globl	set_idt_gate
	.type	set_idt_gate, @function
set_idt_gate:
.LFB0:
	.file 1 "cpu/idt.c"
	.loc 1 4 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 5 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movw	%ax, idt(,%edx,8)
	.loc 1 6 0
	movl	8(%ebp), %eax
	movw	$8, idt+2(,%eax,8)
	.loc 1 7 0
	movl	8(%ebp), %eax
	movb	$0, idt+4(,%eax,8)
	.loc 1 8 0
	movl	8(%ebp), %eax
	movb	$-114, idt+5(,%eax,8)
	.loc 1 9 0
	movl	12(%ebp), %eax
	shrl	$16, %eax
	movl	8(%ebp), %edx
	movw	%ax, idt+6(,%edx,8)
	.loc 1 10 0
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	set_idt_gate, .-set_idt_gate
	.globl	set_idt
	.type	set_idt, @function
set_idt:
.LFB1:
	.loc 1 12 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 13 0
	movl	$idt, %eax
	movl	%eax, idt_reg+2
	.loc 1 14 0
	movw	$2047, idt_reg
	.loc 1 16 0
	movl	$idt_reg, %eax
/APP
/  16 "cpu/idt.c" 1
	lidtl (%eax)
/  0 "" 2
	.loc 1 17 0
/NO_APP
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	set_idt, .-set_idt
.Letext0:
	.file 2 "cpu/types.h"
	.file 3 "cpu/idt.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x162
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
	.uleb128 0x2
	.string	"u16"
	.byte	0x2
	.byte	0x8
	.long	0x49
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
	.long	0x61
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x5
	.byte	0x8
	.byte	0x3
	.byte	0xa
	.long	0xb4
	.uleb128 0x6
	.long	.LASF5
	.byte	0x3
	.byte	0xb
	.long	0x3e
	.byte	0
	.uleb128 0x7
	.string	"sel"
	.byte	0x3
	.byte	0xc
	.long	0x3e
	.byte	0x2
	.uleb128 0x6
	.long	.LASF6
	.byte	0x3
	.byte	0xd
	.long	0x57
	.byte	0x4
	.uleb128 0x6
	.long	.LASF7
	.byte	0x3
	.byte	0x13
	.long	0x57
	.byte	0x5
	.uleb128 0x6
	.long	.LASF8
	.byte	0x3
	.byte	0x14
	.long	0x3e
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	.LASF9
	.byte	0x3
	.byte	0x15
	.long	0x6f
	.uleb128 0x5
	.byte	0x6
	.byte	0x3
	.byte	0x19
	.long	0xe0
	.uleb128 0x6
	.long	.LASF10
	.byte	0x3
	.byte	0x1a
	.long	0x3e
	.byte	0
	.uleb128 0x6
	.long	.LASF11
	.byte	0x3
	.byte	0x1b
	.long	0x25
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF12
	.byte	0x3
	.byte	0x1c
	.long	0xbf
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x4
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x11b
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0x4
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.long	.LASF13
	.byte	0x1
	.byte	0x4
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xc
	.long	.LASF20
	.byte	0x1
	.byte	0xc
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.long	0xb4
	.long	0x13c
	.uleb128 0xe
	.long	0x13c
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF14
	.uleb128 0xf
	.string	"idt"
	.byte	0x3
	.byte	0x1f
	.long	0x12c
	.uleb128 0x5
	.byte	0x3
	.long	idt
	.uleb128 0x10
	.long	.LASF15
	.byte	0x3
	.byte	0x20
	.long	0xe0
	.uleb128 0x5
	.byte	0x3
	.long	idt_reg
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
	.uleb128 0x7
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
.LASF8:
	.string	"high_offset"
.LASF0:
	.string	"unsigned int"
.LASF7:
	.string	"flags"
.LASF6:
	.string	"always0"
.LASF13:
	.string	"handler"
.LASF10:
	.string	"limit"
.LASF12:
	.string	"idt_register_t"
.LASF11:
	.string	"base"
.LASF17:
	.string	"cpu/idt.c"
.LASF16:
	.string	"GNU C11 5.2.0 -mtune=i386 -march=i386 -g -ffreestanding"
.LASF19:
	.string	"set_idt_gate"
.LASF5:
	.string	"low_offset"
.LASF9:
	.string	"idt_gate_t"
.LASF1:
	.string	"short unsigned int"
.LASF3:
	.string	"unsigned char"
.LASF14:
	.string	"sizetype"
.LASF18:
	.string	"/home/parallels/tutuos"
.LASF2:
	.string	"short int"
.LASF15:
	.string	"idt_reg"
.LASF20:
	.string	"set_idt"
.LASF4:
	.string	"char"
	.ident	"GCC: (GNU) 5.2.0"
