.data
    c1: .word 10
    c2: .word 12
    op1: .word 4
    op2: .word 9
    
.text
    # bne t0, t1, label (salta se t0 != t1) [branch if not equal]
    # beq t0, t1, label (salta se t0 == t1) [branch if equal]
    
    lw s2, c1
    lw s3, c2
    lw s4, op1
    lw s5, op2
    
    beq s2, s3, label
    add a0, s4, s5 
    j fine
    label:
    sub a0, s4, s5
    
    fine:    
    li a7, 1
    ecall