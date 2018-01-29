section .data
        a dq 29.0
	b dq 20.0
        msg db "%f"
section .text
        global mian
	extern printf

main:
	fld qword[a]
	fld qword[b]
	fcom
	fstsw ax
	SAHF

pqr:	
        ja pp
	sub esp,8
	fstp qword[a]
	push msg
	call printf
	add esp,12
	jmp pqr

pp:
	fld qword[b]
	ret
       
