.data
    vett: .word 0
    j: .word 1
    k: .word 115
    
.text
    lw s1, vett
    lw s2, j
    lw s3, k
    # li a0, 0 (non necessaria perchè già inizializzata a 0 di default)

while:
    slli t1, a0, 2
    add t1, t1, s1
    lw t0, 0(t1)         
    beq t0, s3, end 
    
    #corpo   
    add a0, a0, s2
    
    j while
end:
        
    li a7, 1
    ecall
    