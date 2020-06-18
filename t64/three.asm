global _start
section .data
	digits db 12,10	;2 bytes i think

section .text
_start:
	call PrintFuck
	push 1
	push 2
	push 5
	pop rax
	call PrintFuck
	pop rax
	call PrintFuck
	pop rax
	call PrintFuck
	mov rax, 60
	mov rdi, 0
	syscall

PrintFuck:
	add rax, 48
	mov [digits], al 	;lower al reigster to the first bbyte overwritng 12 if full rax will overwite both and 6 more
	mov rax, 1
	mov rdi, 1
	mov rsi, digits
	mov rdx, 2
	syscall
	ret
	
