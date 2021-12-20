.data
    a: .word 0
     b: .word 4
     k: .word 1   
.text
    lw a0, a
    lw s2, b
    lw s0, k
    
    li t0, 0 # i
    li t1, 5 # n
    
    for:
    add a0, a0, s2
    add t0, t0, s0
    blt t0, t1, for
    beq t0, t1, for
    end:
        
    li a7, 1
    ecall
    
    add a0, zero, zero
    add t0, zero, zero
        
    for2:
    blt t1, t0, end2
    add a0, a0, s2
    add t0, t0, s0
    j for2
    end2:
        
    ecall