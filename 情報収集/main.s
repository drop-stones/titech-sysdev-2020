	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.intel_syntax noprefix
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 64
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 52], 0
	mov	dword ptr [rbp - 56], edi
	mov	qword ptr [rbp - 64], rsi
	mov	rax, qword ptr [rip + l___const.main.arr]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rip + l___const.main.arr+8]
	mov	qword ptr [rbp - 24], rax
	mov	ecx, dword ptr [rip + l___const.main.arr+16]
	mov	dword ptr [rbp - 16], ecx
	mov	dword ptr [rbp - 48], 100
	lea	rax, [rbp - 48]
	add	rax, 4
	mov	rdi, rax
	lea	rsi, [rip + L_.str]
	mov	edx, 10
	call	___strcpy_chk
	mov	rdx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, rsi
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 64
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @__const.main.a
l___const.main.arr:
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	4                       ## 0x4

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Your name"

	.comm	_a,4,2                  ## @a

.subsections_via_symbols
