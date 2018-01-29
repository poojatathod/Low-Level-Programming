section .data
     arr dd 1,2,8,4,15
     max dd 0
     msg db "max element is %d",0

section .text
      global main
      extern printf

main:
       mov eax,arr
       mov ebx,dword[max]
       mov edx,5
 
pqr:    
           cmp edx,0
	   jz stop
           cmp ebx,dword[eax]
           jg abc
           mov ebx, dword[eax]
	   add eax,4
	   dec edx
	   jmp pqr


abc: 
4      add eax,4
      dec edx
      jmp pqr

stop:  
       push ebx
       push msg
       call printf
       add esp,8
       ret
