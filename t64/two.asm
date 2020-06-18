global _start
section .data
	Ask db "Say my name:"
	LenAsk equ $-Ask
	Ans db "You said:"
	LenAns equ $-Ans
section .bss
	UserData resb 16
section .text
_start:
	call SayIt
	call Listen
	call SayBack
	mov rax, 60
	mov rdi, 0
	syscall
SayIt:
	mov rax, 1
	mov rdi, 1
	mov rsi, Ask
	mov rdx, LenAsk
	syscall
	ret
Listen:
	mov rax, 0
	mov rdi, 0
	mov rsi, UserData
	mov rdx, 16
	syscall
	ret
SayBack:
	mov rax, 1
	mov rdi, 1
	mov rsi, Ans
	mov rdx, LenAns
	syscall
	mov rax, 1
	mov rdi, 1
	mov rsi, UserData
	mov rdx, 16
	syscall
	ret
	
