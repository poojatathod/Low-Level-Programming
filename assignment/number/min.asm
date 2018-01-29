section .data
      n dd 20
      n1 dd 15
      msg db "minimum no. is %d",10

section .text
      global main 
      extern printf

main:
      xor eax,eax
      xor ebx,ebx
      mov eax,dword[n]
      mov ebx,dword[n1]
      cmp eax,ebx
      jl stop

      push ebx
      push msg
      call printf
      add esp,8
      ret

stop:
      push eax
      push msg
      call printf
      add esp,8
      ret

