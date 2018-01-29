section .data
       arr dd 1,2,3,4,5
       arr1 dd 5,6,7,8,9
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
     mov eax,dword[esi]
     jz stop

lp1:
    
     cmp dword[temp],5
     jz next
     cmp dword[ebx],eax
     jz next1
     
     add ebx,4
     inc dword[temp]
     jmp lp1


next1: 
     mov dword[edx],eax
     pusha
     push dword[edx]
     push msg
     call printf
     add esp,8
     popa
     add esi,4
     mov ebx,arr1
     mov dword[temp],0
     add edx,4
     inc ecx
     jmp lp
     

next:
     add esi,4
     mov ebx,arr1
     mov dword[temp],0
     inc ecx
     jmp lp

stop:
     ret

