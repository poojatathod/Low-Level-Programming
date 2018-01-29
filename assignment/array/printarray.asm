section .data
      arr dd 1,2,3,4,5
      msg db "%d",10

section .text
      global main
      extern printf

main:
      xor eax,eax
      xor edx,edx
      mov eax,arr
      mov edx,5
abc: 
      cmp edx,0
      jz stop
      pusha
      push dword[eax]
      push msg
      call printf
      add esp,8
      popa

      add eax,4
      dec edx
      jmp abc

stop:  ret
