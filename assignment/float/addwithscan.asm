section .data
    n1 dq "%f",0
    msg1 dq "addition is %lf",0
    msg db "enter two float values: ",0

section .bss
    a resw 1
    b resw 1

section .text
    global main
    extern printf,scanf

main:
    push msg
    call printf
    add esp,4

    push a
    push n1
    call scanf
    add esp,8

    push b
    push n1
    call scanf
    add esp,8
   

    fld qword[a]
    fld qword[b]
    fadd st0,st1
    sub esp,8
    fstp qword[esp]
    push msg1
    call printf
    add esp,12
    ret
