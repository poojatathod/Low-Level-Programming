section .data
     str1 db "pooja tathod",10
     msg dd "%d",10,0

     section .text
     global main
     extern printf

main:

     mov eax,str1
     mov ecx,0

abc:     
      cmp byte[eax],10
      jz stop
      inc ecx
      inc eax
      jmp abc

stop:
      push ecx
      push msg
      call printf
      add esp,8
      ret
