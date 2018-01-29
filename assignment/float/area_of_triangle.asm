section .data
	base dq 2.0
	height dq 3.0
	two dd 2
	msg db "Area of triangle=%f",10,0
section .bss
	mult1 resq 1
	
section .text
	global main
	extern printf
main:
	fld qword[base]
	fld qword[height]
	fmul
	fild dword[two]
	fdiv

	sub esp,8
	fstp qword[esp]

	push msg
	call printf
	add esp,12
	ret
	
