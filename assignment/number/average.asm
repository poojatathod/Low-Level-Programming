	section .data
	n1 dd 10
	n2 dd 20
	two dd 2
	msg db "average=%d",10,0

	section .text
	global main
	extern printf

main:
	xor edx,edx
	mov eax,dword[n1]
	mov ebx,dword[n2]
	add eax,ebx
	div dword[two]

	push eax
	push msg
	call printf
	add esp,8
	ret
	
