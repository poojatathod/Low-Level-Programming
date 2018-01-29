section .data
        min  dd 1000
	arr dd 1,2,0,4,5
	msg db "min is %d",0

section .text
        global main
	extern printf

main:
         mov eax,arr
	 mov ebx,dword[min]
	 mov ecx,5

abc:     cmp ecx,0
         jz stop
	 cmp ebx,dword[eax]
	 jl abc1
	 mov ebx,dword[eax]
	 add eax,4
	 dec ecx
	 jmp abc



abc1:
       add eax,4
       dec ecx
       jmp abc



stop:
      push ebx
      push msg
      call printf
      add esp,8
      ret

