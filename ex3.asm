global _start
section .data
	monS db "areYouCrazyBitch", 0x0a
	len equ $-monS
	fu db "fast and furious is the game", 0x0a
	le2 equ $-fu
section .text
_start:
	mov eax, 4		;sysWrite to fd in eab
	mov ebx, 1		;ebx is to standard outfd
	mov ecx, monS		;arguments to syscall
	mov edx, len		;arguments to syscall
	int 0x80		;call the fuking interuppt
	jmp addfun
	jmp exit

addfun:
	mov eax, 4		;write
	mov ebx, 1
	mov ecx, fu
	mov edx, le2
	int 0x80
	jmp exit
exit:
	mov eax, 1		;exit syscall
	mov ebx,12		;exit code
	int 0x80
	
	
