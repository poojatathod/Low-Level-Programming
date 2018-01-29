%include "fcmacro.mac"

section .data
	str1 db "*"
        str2 db "@@@@",0
        str3 db "~~BOOM~~",0
	clr db "clear"
	space db " ",0
	t dd 1
	
section .text
	global main
	extern puts,scanf,sleep,system

main:

	mov ecx,0
	mov edx,15
        mov eax,15

abc:   
	cmp ecx,eax
	jz stop
	pusha
	printch str1,ecx
	popa

	pusha
	printch space,edx
	popa

	pusha
	push str2
	call puts
	add esp,4
        popa

	pusha
	push dword[t]
	call sleep
	add esp,4
        popa

	pusha
	push clr
	call system
	add esp,4
	popa
	
	inc ecx
	dec edx
        
	jmp abc

stop:
        pusha
	push dword[t]
	call sleep
	add esp,4
	popa

        pusha
        push clr
	call system
	add esp,4
        popa

       
	pusha
	printch space,eax
	push str3
	call puts
	add esp,4
	popa
	ret
	
	
	
	
