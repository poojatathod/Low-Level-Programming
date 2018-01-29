section .data
        str1 db "madam",0
	len equ $-str1
        str2 db "pallindrome",0
	str3 db "Not pallindrome",0
	

section .bss
        str4 resb 20

section .text
        global main
	extern printf,puts

main:
     mov esi,str1
     mov edi,str4
     mov ecx,len
     dec ecx
     add esi,ecx
     dec esi

abc: 
     std
     lodsb
     cld
     stosb
     loop abc
     
     mov esi,str1
     mov edi,str4
     mov ecx,len
     dec ecx

abc1:
     lodsb
     scasb
     jnz notpallindrome
     loop abc1

     push str2
     call puts
     add esp,4
     ret


notpallindrome:
     push str3
     call puts
     add esp,4
     ret




