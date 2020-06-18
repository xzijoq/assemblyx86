global main
	extern printf
section .data
;	monS db "areYouCrazyBitch %i", 0x0a,0x00

main:
	;sub rsp-8
;	push rbp
;	mov rbp,rsp
	
;	push 123
;	push monS
	mov rdi,123
	mov rsi, 22
	call printf
;	mov rax,0
;	mov rsp,rbp
;	pop rbp

	ret
