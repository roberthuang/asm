section .text
    global _start

_start:
    mov al,3
    mov bl,2
    mul bl

    ;2*3
    add al,'0'	;ASCII
    mov [res],al
    
    ;Print "Answer: "
    mov eax,4
    mov ebx,1
    mov ecx,msg
    mov edx,len1
    int 0x80

    ;Answer
    mov eax,4
    mov ebx,1
    mov ecx,res
    mov edx,1
    int 0x80

    ;exit
    mov eax, 1
    mov ebx, 0
    int 80h

section .bss
    res resb 1

section .data
    msg db 'Answer: ',0xA
    len1 equ $-msg
