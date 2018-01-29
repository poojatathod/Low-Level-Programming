section .data
	n1 dd 20
	n2 dd 30
	msg db "GCD=%d",10,0

section .bss
	num1 resd 1
	num2 resd 1
	
section .text
	global main
	extern printf

main:
	mov eax,dword[n1]
	mov ebx,dword[n2]
	mov ecx,1
	;; mov dword[num1],1

lp0:
	cmp dword[n1],ebx
	jg lp2

lp1:	xor edx,edx
	cmp ecx,dword[n1]
	jz l1
	mov eax,dword[n1]
	div ecx

	cmp edx,0
	jz final3

	inc ecx
	jmp lp1

final3:
	xor edx,edx
	mov eax,dword[n2]
	div ecx

	cmp edx,0
	jz final4

	inc ecx
	jmp lp1

final4:
	
	mov dword[num1],ecx
	inc ecx
	jmp lp1

l1:
	push dword[num1]
	push msg
	call printf
	add esp,8
	ret

lp2:
	cmp ecx,ebx
	jz lp3
	xor edx,edx
	mov eax,dword[n1]
	div ecx

	cmp edx,0
	jz final
	inc ecx
	jmp lp2



final:
	xor edx,edx
	mov eax,dword[n2]
	div ecx

	cmp edx,0
	jz final2

	inc ecx
	jmp lp2

final2:
	mov dword[num1],ecx
	inc ecx
	jmp lp2
lp3:
	push dword[num1]
	push msg
	call printf
	add esp,8
	ret
