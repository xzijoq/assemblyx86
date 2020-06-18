global _start
%macro exit 1
	mov rax, 60
	mov rdi, %1
	syscall
%endmacro
section .data
section .text
_start:
	exit 12
	
