section .data
     str1 db "pooja",0
     len equ $-str1
     msg db "palindrome",0
     msg1 db "not palindrome",0

     section .bss
     str2 resb 50

     section .text
     global main
     extern printf,puts

     main:
     mov esi,str1
     mov edi,str2
     mov ecx,len
     dec ecx
     add esi,ecx
     dec esi

lp:
    std
    lodsb
    cld
    stosb
    loop lp

lp1:mov esi,str1
    mov edi,str2
    mov ecx,len
    dec ecx

lp2:
    lodsb
    scasb
    jnz not_palindrome
    loop lp2


    push msg
    call puts
    add esp,4
    ret

not_palindrome:
    push msg1
    call puts
    add esp,4
    ret

