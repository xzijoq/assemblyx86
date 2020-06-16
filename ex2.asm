global _start
section .data
    msg db "FastAndFurious", 0x0a   ;0x0a is newline it seems
    ln equ $-msg                    ;equ is equal

section .text
    _start:
    mov eax,4  ;sys_write system call
    mov ebx,1  ;sout
    mov ecx,msg    ;pointer
    mov edx,ln     ;fuking length
    int 0x80        ;syscall
    mov eax,1   ;exitSyscall
    mov ebx, 0  ;exit code fuck me
    int 0x80    ;call it baby
    