section .data
       msg db "%d",10,0
       arr dd 2,7,4,1,5,3
       temp dd 0
      
section .text
       global main
       extern printf

main:
        pusha
        mov eax,arr
	mov edx,0
        popa
        
abc:
        cmp edx,6
	jz print
        mov ecx,0

xyz:
        cmp ecx,5
	jz next

        mov ebx,dword[eax]
	mov dword[temp],ebx
	mov ebx,dword[eax+4]
	cmp dword[temp],ebx
	jg abc1
        add eax,4
	inc ecx
	jmp xyz


abc1:   
       mov dword[eax],ebx
       mov ebx,dword[temp]
       mov dword[eax+4],ebx
       inc ecx
       add eax,4
       jmp xyz

       
next: 
      inc edx
      mov eax,arr
      jmp abc


print:
      mov eax,arr
      mov ecx,0

print1:
      cmp ecx,6
      jz stop
      pusha
      push dword[eax]
      push msg
      call printf
      add esp,8
      popa
      add eax,4
      inc ecx
      jmp print1


stop:  
      ret

