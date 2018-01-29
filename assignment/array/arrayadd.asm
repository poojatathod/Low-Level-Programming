section .data
     arr dd 1,2,3,4,5
     msg db "addistion is %d",10
     
section .text
     global main
     extern printf

 main:
     
     xor eax,eax
     xor ebx,ebx
     xor ecx,ecx
     mov eax,arr
     
     
abc: 
     cmp ecx,5
     jz stop
     add ebx,dword[eax]
     add eax,4
     inc ecx
     jmp abc

stop:
   push ebx 
   push msg 
   call printf
   add esp,8
   ret
