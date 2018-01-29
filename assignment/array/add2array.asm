section .data
         arr dd 1,2,3,4,5
	 arr1 dd 1,2,3,4,5
	 sum dd 0
         msg db "addition of two array is %d",10
section .text
          global main
	  extern printf
main:     
          
          mov ebx,arr
	  mov ecx,arr1
	  mov edx,5
	  
abc:	  cmp edx,0
	  jz stop
          mov eax,dword[ebx]
	  add eax,dword[ecx]
	  add dword[sum],eax
	  dec edx
	  add ebx,4
	  add ecx,4
	  
	  jmp abc

stop:     push dword[sum]
          push msg
	  call printf
	  add esp,8
	  ret

