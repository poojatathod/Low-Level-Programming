section .data
	msg db "factorial =%d",10,0
	msg1 db "Enter number:",10,0
	sf db "%d",0
	n1 dd 4
	
section .bss
	num resd 1
	sum resd 1
	
section .text
	global main
	extern printf
	extern scanf

main:
	mov ebx,num
	xor eax,eax

	pusha
	push msg1
	call printf
	add esp,4
	popa
	
	pusha
	push num
	push sf
	call scanf
	add esp,8
	popa
	
	mov eax,1

lp1:
	cmp ebx,1
	jz ret1

	mul ebx
	dec ebx
	jmp lp1

ret1:
	push eax
	push msg
	call printf
	add esp,8
	ret
	
	
