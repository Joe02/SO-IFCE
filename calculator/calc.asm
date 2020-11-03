	.file	"calc.c"
	.text
	.section	.rodata
	.align 8
.LC1:
	.string	"Escolha dois n\303\272meros e uma opera\303\247\303\243o:\n(1) Adi\303\247\303\243o\n(2) Subtra\303\247\303\243o\n(3) Multiplica\303\247\303\243o\n(4) Divis\303\243o"
.LC2:
	.string	"%lf %lf %c"
.LC3:
	.string	"%lf\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	leaq	-33(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-33(%rbp), %eax
	cmpb	$43, %al
	jne	.L2
	movsd	-32(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L3
.L2:
	movzbl	-33(%rbp), %eax
	cmpb	$45, %al
	jne	.L4
	movsd	-32(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L3
.L4:
	movzbl	-33(%rbp), %eax
	cmpb	$42, %al
	jne	.L5
	movsd	-32(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L3
.L5:
	movsd	-32(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
.L3:
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
