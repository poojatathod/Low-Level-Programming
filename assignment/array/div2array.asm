section .data
      arr dd 1,2,3,4,5
      arr1 dd 1,2,3,4,5
      msg db "%d",10,0
  
section .bss  
  temp resd 1

section .text
       global main
       extern printf

main:
       mov ebx,arr
       mov ecx,arr1
       mov eax,5

abc:   
       pusha
       cmp eax,0
       jz stop
       mov edx,0
       mov eax,dword[ebx]
       div dword[ecx]
       mov dword[temp],eax
       push dword[temp]
       push msg
       call printf
       add esp,8
       popa
       dec eax
       add ebx,4
       add ecx,4
       jmp abc

stop:
       ret
