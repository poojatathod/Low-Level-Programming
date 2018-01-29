section .data
      arr dd 1,2,3,4,5
      msg db "%d",10

section .text
      global main
      extern printf


 main:

      mov ecx,5
      mov eax,5
      mov edx,0
      mov ebx,4
      mul ebx
      sub eax,4
      xor ebx,ebx
      mov ebx,arr
      add ebx,eax
      xor eax,eax
abc:
      cmp ecx,0
      jz stop
      mov eax,dword[ebx]
      pusha
      push eax
      push msg
      call printf
      add esp,8
      popa
      dec ecx
      sub ebx,4
      jmp abc

stop:
       ret
