section .data
        msg db "hellow world" ,0
	msg1 db "%s"

section .text
        global main
	extern printf

main:
	mov ebx,msg
        push ebx
	push msg1
        call printf
	add esp,8
	ret
	
