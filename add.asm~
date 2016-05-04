section .data
    msg1 db "Enter a digit", 0xa
    len1 equ $-msg1

    msg2 db "Please enter a second digit", 0xa
    len2 equ $-msg2

    msg3 db "The sum is: "
    len3 equ $-msg3


section .text
    global _start

_start:

    mov eax,4
    mov ebx,1
    mov ecx,msg1
    mov edx,len1
    int 0x80

    mov eax,3
    mov ebx,0
    mov ecx,num1
    mov edx,2
    int 0x80

    mov eax,4
    mov ebx,1
    mov ecx,msg2
    mov edx,len2
    int 0x80
    
    mov eax,3
    mov ebx,0
    mov ecx,num2
    mov edx,2
    int 0x80

    mov eax,4
    mov ebx,1
    mov ecx,msg3
    mov edx,len3
    int 0x80

    mov eax,[num1]
    sub eax,'0'

    mov ebx,[num2]
    sub ebx,'0'

    add eax,ebx
    add eax,'0'

    mov [res],eax
    
    ;print the sum
    mov eax,4
    mov ebx,1
    mov ecx,res
    mov edx,1
    int 0x80

    mov eax, 1  
    xor ebx, ebx 
    int 0x80

section .bss
    num1 resb 2
    num2 resb 2
    res  resb 1
