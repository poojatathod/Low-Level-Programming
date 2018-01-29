section .data
     str1 db "madam",0
     len equ $-str1
     msg db "palindrome",0
     msg1 db "not palindrome",0

     section .bss
     str2 resb 30

     section .text
     global main
     extern printf,puts

     main:
     mov eax,str1
     mov ebx,str2
     mov ecx,len
     dec ecx
     add eax,ecx
     dec eax
     

     abc:
     cmp ecx,0
     jz next
     mov dl,byte[eax]
     mov byte[ebx],dl
     inc ebx
     dec eax
     dec ecx
     jmp abc

next:
     mov eax,str1
     mov ebx,str2
     mov ecx,len
     dec ecx

abc1:
     cmp ecx,0
     jz pal
     mov dl,byte[eax]
     cmp byte[ebx],dl
     jnz not_pal
     inc eax
     inc ebx
     dec ecx
     jmp abc1

pal:
     push msg
     call printf
     add esp,4
     ret

not_pal:
     push msg1
     call printf
     add esp,4
     ret
