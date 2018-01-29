        %macro mymul 2
	mov eax,%1
	mov ebx,%2
	mul ebx
	%endmacro

section .data
         msg db "multiplication is %d"

section .text

        global main
	extern printf

main:
	mov eax,5
	mov ebx,10
	mymul eax,ebx
	push eax
	push msg
	call printf
	add esp,8
	ret
