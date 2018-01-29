%include "fact1.mac"
	
section .data
	n dd 4
	msg db "factorial is %d"

section .text
	global main
	extern printf

main:
	mov eax,dword[n]
	mov ebx,dword[n]


abc:	cmp ebx,1
	jz return
	dec ebx
	mymult eax,ebx
	jmp abc

return:
	push eax
	push msg
	call printf
	add esp,8
	ret
