section .data
	n dd 12
	msg db "%d is even",10,0
	msg1 db "%d is odd",10,0


section .text
	global main
	extern printf

main:
	xor edx,edx
	mov eax,dword[n]
	mov ebx,2
	div ebx
	cmp edx,0
	jmp abc
	jmp abc1

abc:
	push dword[n]
	push msg
	call printf
	add esp,8
	ret

abc1:
	push dword[n]
	push msg1
	call printf
	add esp,8
	ret
	
