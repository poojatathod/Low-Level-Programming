section .data
	n1 dq 9.0
	n2 dq 8.0

	msg db "minimum no =%f",10,0

section .text
	global main
	extern printf

main:
	fld qword[n1]
	fld qword[n2]
	fcom
	fstsw ax
	SAHF

	ja lp1
	
	sub esp,8
	fstp qword[esp]
	push msg
	call printf
	add esp,12
	ret

lp1:	fld qword[n1]
	sub esp,8
	fstp qword[esp]
	push msg
	call printf
	add esp,12
	ret
	
	
