section .data
	msg db "my first program",10
	msg1 db "my length is: %d",0

section .text
	global main
	extern printf

main:
	xor edx,edx
	mov ebx,msg

abc:
	cmp byte[ebx],10
	jz return
	inc edx
	inc ebx
	jmp abc

return:
	push edx
	push msg1
	call printf
	add esp,8
	ret
	
