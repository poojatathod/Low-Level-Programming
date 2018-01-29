section .data
      str1 db "hellow world",0
      msg dd "%d",10,0

section .text
      global main
      extern printf
 
main:
     mov edi,str1
     mov al,0
     mov ecx,0

lp:  scasb
     jz out
     inc ecx
     jmp lp

out:
     push ecx
     push msg
     call printf
     add esp,8
     ret
