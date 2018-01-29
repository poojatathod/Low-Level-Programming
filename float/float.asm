section .data
	two dd 2
	a dq 2.0
	b dq 4.0
	r dq 3.0
        msg db "%f",10,0
section .bss
	c resq 1

section .text
	global main
	extern printf 

main:
	fld qword[a]
	fld qword[b]
        fld qword[r]
	
	fmul qword[r]
  	fldpi
	fmul st1
	fild dword[two]
	fmul st1
         fst qword[c]
	sub esp,8
        fstp qword[esp]
	push msg
	call printf
	add esp,12
	ret
	
