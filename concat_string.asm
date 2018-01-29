section .data
	msg db "my name is",0
	msg1 db "pooja",10,0
        msg4 db "my string is %s"
	
section .bss
	new resb 40

	
section .text
	global main
	extern printf

	

main:
	mov ebx, msg
	mov ecx, msg1
	mov edx, new

abc:	
        cmp byte[ebx],0
	jz pqr
	
	mov al, byte[ebx]
	mov byte[edx],al
	inc ebx
	inc edx
	jmp abc

pqr:	mov byte[edx],' '
	inc ebx
	inc edx
	jz abc1

abc1:
	
	cmp byte[ecx],10
	jz return
	mov al,byte[ecx]
	mov byte[edx],al
	inc ecx
	inc edx
	jmp abc1



return:
	push new
	push msg4
	call printf
	add esp,8
	ret
