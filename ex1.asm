global _start
_start:
    mov eax,1  ;system call for exit
    mov ebx,132 ;return status
    mov ecx,11
    add ebx,ecx ;ebx+=ecx
    sub ebx,ecx ;ebx-=ecx
    ;mul ebx     ;eax*=ebx mul and div always use eax
    ;div ebx     ;eax/=ebx
    int 0x80    ;interuppt for syscall numbered by eax