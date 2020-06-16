
;;not Working

global _start
	
section .data

	fu db "wow", 0x0a
	ln equ $-fu


section .text

	
_start:

	add rsp, 4
	mov [rsp], byte 'k'
	mov [rsp+1], byte 'f'
	mov [rsp+2], byte 'u'
	mov [rsp+3], byte 'c'

Print:
	mov rax, 4
	mov rbx, 1
	mov rcx, rsp
	mov rdx, ln
	int 0x80
Exit:
	mov rax, 1
	int 0x80
