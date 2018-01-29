	%macro myadd 2
	mov eax,%1
	mov ebx,%2
	add eax,ebx
	%endmacro


section .data

        msg db "addition is %d"

section .text

	global main
	extern printf

main:	
	mov eax,3
	mov ebx,5
	myadd eax,ebx

	push eax
	push msg
	call printf
	add esp,8
	ret
	
