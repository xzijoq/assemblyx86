global _start
section .data
	Msg db "the  12th power of 2 is:", 0x0a
	LnMsg equ $-Msg		;not clear what $ does
	Dbg db "This Ran", 0x0a
	LenDbg equ $-Dbg
section .text
	


	
_start:
	mov ecx, 4		;counter
	mov ebx, 2		;power
	jmp FunPower
	jmp Exit
FallOffCheck:
	mov ebx, 133
	jmp Exit	

FunPower:
	add ebx,ebx
	dec ecx			;decrement the damn thing
	cmp ecx,0		;compare for zero
	jg FunPower
	jle Exit			;jump if less than


MulCheck:
	mov eax, 3
	mul ebx
	mov ebx,eax
	jmp Exit


PrintDebug:
	mov eax, 4		;sys_print
	mov ebx, 13
	mov ecx, Dbg
	mov edx, LenDbg
	int 0x80
	jmp Exit
	
Exit:
	mov eax, 1		;exit coode
	int 0x80			;exit

	;jmp je jel jgl

	
	
