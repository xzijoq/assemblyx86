global _start
section .data
	msg db "this is the new shit",0x0a ;db is define bytes ..fuckme
	len equ $-msg
section .text
_start:
	mov rax, 1		;
	mov rdi, 1
	mov rsi, msg
	mov rdx, len
	syscall
	mov rax, 60
	mov rdi, 0
	syscall
