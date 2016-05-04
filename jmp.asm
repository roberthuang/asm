section	.text
   global _start 

_start:
   mov ecx,[num1]
   cmp ecx,[num2]
   jg check_third_num
   jmp _exit

check_third_num:
   cmp ecx,[num3]
   jg _exit
   
      
_exit:
   mov [largest],ecx

   ;"The largest digit is: "
   mov   ecx,msg
   mov   edx, len
   mov   ebx,1	;file descriptor (stdout)
   mov   eax,4	;system call number (sys_write)
   int   0x80	;call kernel
   
   ;Print largest number
   mov   ecx,largest
   mov   edx, 2
   mov   ebx,1	;file descriptor (stdout)
   mov   eax,4	;system call number (sys_write)
   int   0x80	;call kernel

   ;exit
   mov   eax, 1
   int   80h 




section .data
   msg db "The largest digit is: ", 0xA,0xD    
   len equ $- msg 

   num1 dd '47'
   num2 dd '22'
   num3 dd '31'

section .bss
   largest resb 2
