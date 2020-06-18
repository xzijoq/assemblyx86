global _start
section .data
	fn db "tobaskus",0
	crazy db "i wonder if you knwo"
	lncr equ $-crazy
section .text
_start:
	mov rax, 2
	mov rdi, fn
	mov rsi, 65
	mov rdx, 0644o
	syscall
	push rax
	mov rdi, rax
	mov r12, rax
	mov rax, 1
	mov rsi, crazy
	mov rdx, lncr
	syscall
	pop rdi
	mov rax, 3
	syscall
	mov rax, 60
	mov rdi, r12
	syscall
