%include "macro.mac"

section .data
        newline db 10,0
	space db " ",0
	star db "*",0

	fmt db "%d",0

        pfmt db "Enter no of rows for traingle",10,0
	sfmt db "%d",0

section .bss
        n resd 1	
	
	
section .text 
        extern printf,scanf
	global main
	
main: 

	


	
	mov ecx,1
        mov edx,4
	mov ebx,edx
	inc edx

first:	
	
loop:	cmp ecx,edx
	jz second
	mov eax,ebx
	sub eax,ecx
	pusha
        printch space,eax
        popa
        pusha
	printch star,ecx
        popa
	pusha
	printch newline,1
        popa
	inc ecx
	jmp loop
	
second:	

	printch newline,4
	
	
	mov ecx,1
        mov edx,4
	mov ebx,edx
	inc edx
	
loop1:	cmp ecx,edx
	jz stop
	mov eax,ebx
	sub eax,ecx
	pusha
        printch space,eax
        popa

	pusha

here1:	cmp ecx,0
	jz next1
        pusha
	printch star,1
        popa
	pusha
	printch space,1
	popa
	dec ecx
	jmp here1	
next1:
	popa
	pusha
	printch newline,1
        popa
	inc ecx
	jmp loop1
	


	

third:



	printch newline,4
	
	
	mov ecx,1
        mov edx,4
	mov ebx,edx
	inc edx
	
loop2:	cmp ecx,edx
	jz stop
	mov eax,ebx
	sub eax,ecx
	pusha
        printch space,eax
        popa

	pusha

here2:	cmp ecx,0
	jz next2
        pusha
	printch star,1
        popa
	pusha
	printch space,1
	popa
	dec ecx
	jmp here2	
next2:
	popa
	pusha
	printch newline,1
        popa
	inc ecx
	jmp loop2
	
stop:	
	ret

