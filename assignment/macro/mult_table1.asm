	%macro mymult 2
	mov eax,%1
	mov ebx,%2
	mul ebx
	%endmacro

section .data
        msg db "%d",10,0

section .text
	global main
	extern printf

main:
	xor eax,eax
	mov ebx,1
	xor ecx,ecx
	xor edx,edx
        

abc:
	cmp ebx,11
	jz pqr
	mymult 10,ebx
	pusha
	push eax
	push msg
	call printf
	add esp,8
	popa
	inc ebx
	jmp abc

pqr:
	ret
