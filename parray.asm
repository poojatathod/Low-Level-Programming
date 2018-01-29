section .data
         arr dd 1,2,3,4,5
	 msg1 db "%d",10,0

section .bss
       arr1 resd 5

section .text
        global main
	extern printf

main:
        mov esi,arr
	mov ecx,5
lp:
	
	lodsd
	pusha
        push eax
	push msg1
	call printf
	add esp,8
        popa
	loop lp
        ret

