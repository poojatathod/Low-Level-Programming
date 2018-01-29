section .data
      n1 dd 0
      n2 dd 1
      msg db "%d ",10

section .bss
      msg1 resd 50

section .text
      global main
      extern printf

main:
      mov eax,dword[n1]
      mov ebx,dword[n2]
      mov ecx,10

      pusha
      push eax
      push msg
      call printf
      add esp,8
      popa

      pusha
      push ebx
      push msg 
      call printf
      add esp,8
      popa


abc1:
      cmp ecx,0 
      jz stop

      add eax,ebx
      pusha
      push eax
      push msg 
      call printf
      add esp,8
      popa
      jmp abc1

stop:
      ret
  

