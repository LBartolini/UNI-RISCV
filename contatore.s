.data

n: .word 5

.text

lw s0, n

li t0, 0 # indirizzo partenza del vettore
li a0, 0 # contatore
li a1, 1 # indice

lw s3, 0(t0)

for:
    bgt a1, s0, end
    slli t4, a1, 2
    add t1, t0, t4
    lw s4, 0(t1)
    sltu t3, s3, s4
    add a0, a0, t3
    
    mv s3, s4
    
    addi a1, a1, 1
    j for
end:

li a7, 1
ecall