section .data
         arr dd 1,2,3,4,5
	 msg1 db "%d",0

section .bss
       arr1 resd 5

section .text
        global main
	extern printf

main:   mov ebx,arr
	mov edx,5
abc:    
        cmp edx,0
	jz stop
	pusha
        push dword[ebx]
	push msg1
	call printf
	add esp,8
	popa
	add ebx,4	
	dec edx
        jmp abc

stop:	
        ret
