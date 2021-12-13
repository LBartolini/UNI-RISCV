.data
    a: .word 12
    b: .word -2
    c: .word 4
    
    newline: .string "\n"


.text
    lw a3, a
    lw a1, b
    lw a2, c
    
    # t0 = (a+b)*16

    add t0, a3, a1
    slli a0, t0, 4
    
    li a7, 1
    ecall

    la a0, newline
    li a7, 4
    ecall


    # t0 = c+(a-b)/2
    
    sub t0, a3, a1
    srli t0, t0, 1
    add a0, t0, a2
    
    li a7, 1
    ecall
    
    la a0, newline
    li a7, 4
    ecall


    # t0 = a*20
    
    slli t0, a3, 4
    slli t1, a3, 2
    add a0, t0, t1
    
    li a7, 1
    ecall
    
    la a0, newline
    li a7, 4
    ecall