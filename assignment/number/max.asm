section .data
         n dd 14
	 n1 dd 10
	 msg db "maximum no is %d",0

section .text
         global main
	 extern printf
	
main:    
         xor eax,eax
	 xor ebx,ebx
	 xor ecx,ecx
	 mov eax,dword[n]
	 mov ebx,dword[n1]
         cmp eax,ebx
	 jg stop
	 push ebx
	 push msg
	 call printf
	 add esp,4
	 ret
stop:
         push eax
	 push msg
	 call printf
	 add esp,4
	 ret

