section .data
	a dq 29.0
	b dq 20.1

section .text
	global main
	extern printf
	

main:
	fld qword[a]
	fld qword[b]
	fcom
	fstsw ax
	SAHF
        ret
	
	
