section .data
      n1 dq 1.0
      n2 dq 2.0
      msg db "%lf is greater",10
     
     section .text
     global main
     extern printf

     main:
     fld qword[n1]
     fld qword[n2]
     fcom 
     fstsw ax
     SAHF

abc:
      ja pp
      sub esp,8
      pusha
      fstp qword[n1]
      push msg
      call printf
      add esp,12
     popa
      ret

pp:  sub esp,8
     fstp dword[n2]
     push msg
     call printf
     add esp,12
     ret



