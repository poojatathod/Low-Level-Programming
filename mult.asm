section .data
        num1 dd 10
	num2 dd 3
	msg db 'multiplication is %d ',10,0
	section .text
section .text
	global main
	extern printf
main:
	mov eax,dword[num1]
	mov ecx,dword[num2]
	mul ecx
	push eax
	push msg
	call printf
	add esp,8
	
	
