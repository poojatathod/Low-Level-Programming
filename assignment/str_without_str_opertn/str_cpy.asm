section .data
      str1 db "Hello World",10
      msg db "%s",10
section .bss
      str2 resb 20
    
section .text
      global main
      extern printf

main:
      mov ecx,str1
      mov ebx,str2
abc:
      cmp byte[ecx],10
      jz stop
      mov al,byte[ecx]
      mov byte[ebx],al
      inc ebx
      inc ecx
      jmp abc

stop:
      push str2
      push msg 
      call printf
      add esp,8
      ret

