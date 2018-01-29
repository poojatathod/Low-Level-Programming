section .data
         msg db "my friends are the best",10,0
	 msg1 db "%s",10,0


section .bss
       msg2 resb 20

section .text
        global main
	extern printf


main:
        mov ebx,msg
	mov ecx,msg2

pqr:	
        cmp byte[ebx],10
	jz abc
	mov al,byte[ebx]
	mov byte[ecx],al
	inc ebx
	inc ecx
	jmp pqr

abc:
	push msg2
	push msg1
	call printf
	add esp,8
	ret

	
