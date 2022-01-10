.data

n: .word 4

.text

lw s0, n
li s1, 0 # somme pari
li s2, 0 # somme dispari

li t0, 0 # indirizzo partenza del vettore
li a0, 0 # contatore
li a1, 0 # indice

for:
    bgt a1, s0, end
    slli t3, a1, 2
    add t1, t0, t3
    
    lw s3, 0(t1)
    
    andi t4, a1, 1
    bne t4, zero, else # if resto == 0
        add s1, s1, s3
        j endif
    else:
        add s2, s2, s3
    endif:
    
    addi a1, a1, 1
    j for
end:
mv a0, s1
li a7, 1
ecall

li a0, 10
li a7, 11
ecall

mv a0, s2
li a7, 1
ecall