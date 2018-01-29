section .data
	str1 db "madam",0
        len equ $-str1
	str2 db "pallindrome",0
	str3 db "not pallindrome",0
       str4 db "%s",10

section .bss
      str5 resb 20
      
section .text

	global main
	extern printf,puts
	
main:
       xor eax,eax
       xor ebx,ebx
       xor ecx,ecx
       xor edx,edx
       
    
       mov ebx,str1
       mov ecx,str5
       mov eax,0
       mov edx,len
       add ebx,len
       dec ebx
       dec ebx 
       dec edx

abc:   
       cmp eax,edx
       jz pqr
       mov al,byte[ebx]
       mov byte[ecx],al
       inc eax
       inc ecx
       dec ebx
       jmp abc

pqr:  
       mov eax,0
       mov ebx,str1
       mov edx,str5
       mov ecx,len
       dec ecx

lp2:   
       mov al,byte[ebx]
       cmp byte[edx],al
       jnz notpalindrome
       inc ebx
       inc edx
       loop lp2
       
       

palindrome:
       pusha
       push str2
       call puts
       add esp,4
       popa
       ret

notpalindrome:
        pusha
	push str3
	call puts
	add esp,4
	popa
	ret


