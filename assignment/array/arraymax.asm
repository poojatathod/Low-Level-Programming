section .data
       arr dd 1,2,3,4,5
       max dd 0
       msg db "maximum element is %d",0

section .text
       
       global main
       extern printf

 main:
       xor eax,eax
       xor ecx,ecx
       mov ecx,5
       mov eax,arr
       mov ebx,dword[max]

abc:
       cmp ecx,0
       jz stop
       cmp ebx,dword[eax]
       jg next
       mov ebx,dword[eax]
       add eax,4
       dec ecx
       jmp abc

next:
       add eax,4
       dec ecx
       jmp abc

stop:
     push ebx
     push msg
     call printf
     add esp,8
     ret
