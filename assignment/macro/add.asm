	%macro myadd 2
	mov esi,%1
%%abc:
	mov edi,%2
	add esi,edi
	mov eax,esi
	jmp %%abc
	%endmacro

section .data
	msg db "additon of two no is %d",10,0

section .text

	global main
	extern printf

main:

	myadd eax,ebx
	myadd 10,30
	push eax
	push msg
	call printf
	add esp,8
	ret
	
	
	
