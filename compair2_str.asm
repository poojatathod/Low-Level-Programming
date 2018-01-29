section .data
str1 db "my name is",0
str2 db "my name is",0
str3 db "my name are",0
msg1 db "equal"
msg2 db "not equal"

section .text

        global main
	extern printf


main:
xor ebx,ebx
xor ecx,ecx
mov edx,str3
mov ebx,str1
mov ecx,str2

abc:

	cmp byte[ebx],0
	jz abc1
	mov al,byte[ebx]
	cmp byte[ecx],al
	inc ebx
	inc ecx
	jmp abc

abc1:

	mov al,byte[ebx]
	cmp byte[ecx],al
	jz equal
	jz not_equal
	
not_equal:

	push msg2
	call printf
	add esp,4
	ret


equal:
	push msg1
	call printf
	add esp,4
	ret
	
