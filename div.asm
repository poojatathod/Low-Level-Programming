section .data
        num1 dd 10
	num2 dd 5
	msg db "division is %d",10,0
section .text
	global main
	extern printf
main:
	mov edx,0
	mov eax,dword[num1]
	mov ebx,dword[num2]
	div ebx

	push eax
	push msg
	call printf
	add esp,8
	ret
	
