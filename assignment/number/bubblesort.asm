section .data
       arr dd 6,2,8,9,3,1
       msg db "%d",10,0
       temp dd 0


section .text
        global main
	extern printf

main:
        mov eax,arr
        mov edx,0

abc1:    
        cmp edx,6
	jz end
	mov ecx,0

abc2:   cmp ecx,5
        jz next
	mov ebx,dword[eax]
	mov dword[temp],ebx
	mov ebx,dword[eax+4]
	cmp dword[temp],ebx
	jg abc3
	inc ecx
	add eax,4
	jmp abc2

abc3:
        mov dword[eax],ebx
	mov ebx,dword[temp]
	mov dword[eax+4],ebx
	inc ecx
	add eax,4
	jmp abc2

	
next:  
        inc edx
	mov eax,arr
	jmp abc1

end:
       mov eax,arr
       mov edx,0
       
end1:
       cmp edx,6
       jz stop
       pusha
       push dword[eax]
       push msg
       call printf
       add esp,8
       popa
       inc edx
       add eax,4
       jmp end1

stop:
       ret



