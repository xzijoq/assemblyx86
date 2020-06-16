global _start
section .data
	funOne db "fun1Caled", 0x0a
	len equ $-funOne
	funTwo db "fun2Caled", 0x0a
;	len equ $-funTwo
	funThree db "fun3Caled", 0x0a
;	len equ $-funThree
	funFour db "fun4Caled", 0x0a
;	len equ $-funFour
	
section .text
_start:
	call fun1
	;jmp DebugPrint
	mov rax, 1
	int 0x80

fun1:
	push rbp
	mov rbp, rsp
	mov rax, 4		;sysWrite to fd in eab
	mov rbx, 1		;ebx is to standard outfd
	mov rcx, funOne		;arguments to syscall
	mov rdx, len		;arguments to syscall
	int 0x80		;call the fuking interuppt
	mov rbx, 43
	push 123
	push 3333
	push 222
	call fun2
	mov rsp, rbp
	pop rbp
	ret

	
fun2:
	push rbp
	mov rbp, rsp
	mov rax, 4		;sysWrite to fd in eab
	mov rbx, 1		;ebx is to standard outfd
	mov rcx, funTwo		;arguments to syscall
	mov rdx, len		;arguments to syscall
	int 0x80		;call the fuking interuppt
	mov rbx, 43
	call fun3
	
	mov rsp, rbp
	pop rbp
	ret
	
fun3:
	push rbp
	mov rbp, rsp
	mov rax, 4		;sysWrite to fd in eab
	mov rbx, 1		;ebx is to standard outfd
	mov rcx, funThree		;arguments to syscall
	mov rdx, len		;arguments to syscall
	int 0x80		;call the fuking interuppt
	mov rbx, 43
	mov rsp, rbp
	call fun4
	pop rbp
	ret
	
fun4:
	push rbp
	mov rbp, rsp
	mov rax, 4		;sysWrite to fd in eab
	mov rbx, 1		;ebx is to standard outfd
	mov rcx, funFour		;arguments to syscall
	mov rdx, len		;arguments to syscall
	int 0x80		;call the fuking interuppt
	mov rbx, 43
	mov rsp, rbp
	pop rbp
	ret
	
