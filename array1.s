.data

n: .word 20

.text

lw s0, n

li t0, 0 # indirizzo partenza del vettore
li a0, 0 # contatore
li a1, 0 # indice

for:
    bge a1, s0, end
    add t1, t0, a1
    lb t2, 0(t1)
    bne t2, zero, endif 
    addi a0, a0, 1
endif:
    addi a1, a1, 1
    j for
end:
    
li a7, 1
ecall