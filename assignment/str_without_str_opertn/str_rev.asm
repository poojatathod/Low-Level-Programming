section .data
      str1 db "My Self Pooja",10,0
      len equ $-str1
      
section .bss
      str2 resb 50

section .text
      global main
      extern printf,puts

main:

      mov ebx,str1
      mov edx,str2
      mov ecx,len
      dec ecx
      add ebx,ecx
      dec ebx
       

abc:
      cmp ecx,0
      jz stop
      mov al,byte[ebx]
      mov byte[edx],al
      inc edx
      dec ebx
      dec ecx
      jmp abc

stop:
      
      push str2
      call printf
      add esp,4
      ret
