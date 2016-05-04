SYS_EXIT equ 1
SYS_WRITE equ 4
STDIN equ 4
STDOUT equ 1

section .text
    global _start

_start:
    mov eax,SYS_WRITE
    mov ebx,STDOUT
    mov ecx, msg1
    mov edx, len1
    int 0x80

    mov eax,SYS_WRITE
    mov ebx,STDOUT
    mov ecx, msg2
    mov edx, len2
    int 0x80
    
    mov eax,SYS_WRITE
    mov ebx,STDOUT
    mov ecx, msg3
    mov edx, len3
    int 0x80
    
    mov eax,SYS_EXIT    ;system call number (sys_exit)
    int 0x80            ;call kernel


section .data

    msg1 db 'Hello!',0xa
    len1 equ $-msg1

    msg2 db 'Welcome!',0xa
    len2 equ $-msg2

    msg3 db 'Assembly!',0xa
    len3 equ $-msg3
