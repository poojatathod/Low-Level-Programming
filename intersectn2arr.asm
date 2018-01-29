section .data
       arr dd 1,2,3,4,5
       arr1 dd 2,4,5,6,9
       tn dd 0
       temp dd 0
       msg db "%d ",10,0


section .bss
       arr2 resd 20


section .text
       global main
       extern printf


main: mov edx,0
      mov eax,0
      mov esi,arr
      mov ebx,arr1
      mov edx,arr2
      mov ecx,0
     
lp:
     cmp ecx,5
     jz stop

lp1:
    
     cmp dword[temp],5
     jz next
     mov eax,dword[esi]
     cmp dword[ebx],eax
     jz next1
     
     add ebx,4
     inc dword[temp]
     jmp lp1


next1: 
     mov dword[edx],eax
     inc dword[tn]
     add esi,4
     mov ebx,arr1
     mov dword[temp],0
     inc ecx
     add edx,4
     jmp lp
     

next:
     add esi,4
     mov ebx,arr1
     mov dword[temp],0
     inc ecx
     jmp lp

stop:
     mov ecx,0
     mov edx,arr2
print:
     cmp ecx,dword[tn]
     jz return
     pusha
     push dword[edx]
     push msg
     call printf
     add esp,8
     popa
     add edx,4
     inc ecx
     jmp print

return:
     ret

