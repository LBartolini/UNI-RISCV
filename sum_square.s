.data
    x: .word 10
    y: .word 5
.text
    lw a0, x
    lw a1, y
    
    jal sum_square
    
    j fine_main
    
sum_square:
    addi sp, sp, -4 # push(ra)
    sw ra, 0(sp)
    
    jal mult
    add a0, a0, a1
    
    lw ra, 0(sp) # pop(ra)
    addi sp, sp, 4
    jr ra 
    

mult:
    addi sp, sp, -4 # push(ra)
    sw ra, 0(sp)
    li t0, 0
    li t1, 0
loop_mult:
    bge t0, a0, fine_loop
    add t1, t1, a0
    addi t0, t0, 1
    j loop_mult
fine_loop:
    add a0, t1, zero
    
    lw ra, 0(sp) # pop(ra)
    addi sp, sp, 4
    jr ra 
    
    
fine_main:
    li a7, 1
    ecall
    
