section .data
    n1 dq 4.0
    n2 dq 2.0
    msg db "addition is %f",0

    section .text
    global main
    extern printf

    main:

    fld qiiword[n1]
    fld qword[n2]
    fadd st0,st1
    sub esp,8
    fstp qword[esp]
    push msg
    call printf
    add esp,12
    ret
