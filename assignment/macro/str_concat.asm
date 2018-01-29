	%include "str_concat1.mac"
	
section .data

	str1 db "my name is",10,0
	str2 db "pooja",10,0
	msg db "%s"

section .bss

	msg2 resb 30

section .text
	global main
	extern printf

main:
	strcat str1,str2,msg2

return:
	push msg2
	push msg
	call printf
	add esp,8
	ret
