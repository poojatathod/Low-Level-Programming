section .data
         arr dd 1,2,3,4,10
	 len equ $-arr
	 msg1 db "addition is %d",0

section .bss
       arr1 resd 5

section .text
        global main
	extern printf

main:   
	mov ebx,arr
        mov edx,5
        xor eax,eax
   
abc:    cmp edx,0
        jz stop
	add eax,dword[ebx]
	add ebx,4
	dec edx
        jmp abc


stop:
        push eax
	push msg1
	call printf
	add esp,8
        ret
