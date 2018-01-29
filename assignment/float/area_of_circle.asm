	section .data
	r dq 4.2
	msg db "area of circle=%f",10,0

	section .text
	global main
	extern printf

main:
	fld qword[r]
	fmul st0
	fldpi
	fmul

	sub esp,8
	fstp qword[esp]
	push msg
	call printf
	add esp,12
	ret
