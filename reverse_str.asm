section .data
      str1 db "pooja",10,0
      len equ $-str1
      msg db "%s",0


section .bss
       msg1 resb 10

section .text
      global main
      extern printf

main:
      mov esi,str1
      mov edi,msg1
    
      lodsb
      stosb
      

