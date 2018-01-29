section .data
	str db "my name is pooja",10,0
	msg db "%s",10,0
        len equ $-str

section .bss
	str resb 15
	

section .text
	global main
	extern printf
        extern lenstr
	

main:
	xor edx,eax
	xor ecx,ebx
abc:
	
	mov edx,str
	mov al, byte[edx]
	cmp al,32
	mov eax,al
	jz pqr
	add edx,4
	jmp abc


pqr:
        pusha
	push eax
	push msg
        call printf
	popa
	add esp,8
	ret
