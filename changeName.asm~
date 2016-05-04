section .text
    global _start

_start:
    mov edx,9
    mov ecx,name
    mov ebx,1
    mov eax,4
    int 0x80

    mov [name],dword 'Fuck'
    
    mov edx,8
    mov ecx,name
    mov ebx,1
    mov eax,4
    int 0x80
    
    ;Next Line
    mov edx,len 
    mov ecx,next
    mov ebx,1
    mov eax,4
    int 0x80

    mov eax,1
    int 0x80



section	.data
    name db 'Zara Ali '
    next db 0xa
    len equ $-next
