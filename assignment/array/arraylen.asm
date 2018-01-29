section .data
    arr dd 1,2,3,4,5,-1
    msg db "length is %d",10

    section .text
    global main
    extern printf

    main:
    xor eax,eax,
    xor ecx,ecx
    mov eax,arr
    mov ecx,0

abc:

    cmp dword[eax],-1
    jz stop
    inc ecx
    add eax,4
    jmp abc

    stop:
    push ecx 
    push msg
    call printf
    add esp,8
    ret

