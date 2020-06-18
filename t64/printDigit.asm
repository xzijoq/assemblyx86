%macro EXIT 0
	mov rax, 60
	mov rdi, 0
	syscall
%endmacro
;; r11 fucking seems to be overwritten
;; and fucking rcx end up being 101 no matter what
;; mother fucker r12-15 are calle saved regs
	
	
global _start
section .data

section .bss
	DigitsPrintable resb 100
	DigitPointer resb 8	;a


section .text
_start:
	mov rax, 1457
	mov r12, 0
	jmp PrintDigits
	
PrintDigits:
	mov rdx, 0
	mov r10, 10
	div r10			;rax/=r10
	add rdx, 48
	mov [DigitsPrintable + r12], rdx
	inc r12
	cmp rax, 0
	jg PrintDigits
	dec r12

PrintDigitsPP:

	mov rbx, DigitsPrintable
	add rbx, r12
	mov rax, 1
	mov rdi ,1
	mov rsi , rbx
	mov rdx, 1

	syscall
	
	sub r12, 1
	cmp r12, 0
	jge PrintDigitsPP

	EXIT
	
	
	
	
	
	
