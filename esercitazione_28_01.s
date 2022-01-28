.data
    n: .word 10
.text
    lw s1, n
    li t0, 0 # indice
loop: 
    bgt t0, s1, fine
    li a1, 1
    sll s0, a1, t0
    add s0, s0, t0
    srli s0, s0, 1
    add a0, a0, s0
    
    addi t0, t0, 1
    j loop
    
fine:
    li a7, 1
    ecall
