section .data
        n dd 4	
	b dq 4.0
	a dq 1.0
        c dq 2.0
	msg db "%d",10,0

section .bss
	s resq 1

section .text
        global main
	extern printf

main:
	fld qword[c]
	fld qword[a]
	fmul st1
	fild dword[n]
	fmul st1

	fld qword[b]
	fmul qword[b]
	fsub st0,st1
	fsqrt

	fld qword[b]
	fchs
	fadd st0,st1
        sub esp,8
	fst qword[esp]
	push msg
	call printf
	add esp,8
	ret
