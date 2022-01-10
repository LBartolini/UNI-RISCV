.data

n: .word 10

.text

lw s0, n

li t0, 0 # indirizzo partenza del vettore
li a0, 0 # contatore
li a1, 0 # indice

for:
    bge a1, s0, end
    add t1, t0, a1
    lb t2, 0(t1)
    sltiu t3, t2, 1 # considero i numeri come unsigned (problema perchè di default sono considerati in C2) 
    add a0, a0, t3
    addi a1, a1, 1
    j for
end:
    
li a7, 1
ecall