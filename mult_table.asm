section .data

	n1 dd 2
	msg db "%d",10,0


section .text
	global main
	extern printf
       

main:
	xor eax,eax
	xor ebx,ebx
	xor ecx,ecx
	xor edx,edx

	inc ebx

abc:

	mov eax,dword[n1]
	cmp ebx,11
        jz return
        mul ebx
	pusha
	push eax
	push msg
	call printf
	add esp,8
	popa
	inc ebx
	xor eax,eax
	jmp abc

return:
	
	ret
	
	
