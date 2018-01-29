global lenstr

lenstr:
	push ebp
	mov  ebp,esp
	mov ebx,[ebp+8]
	xor eax,eax


pqr:
	cmp byte[ebx],0
	jz abc
	add eax,1
	add ebx,1
	jmp pqr


abc:
	mov esp,ebp
	pop ebp
	ret
	
