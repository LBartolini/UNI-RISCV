# Date due stringhe scrivere un codice RISC-V che le concatena e poi stampa il risultato

.data
str1: .string "Hello "
str2: .string "World!"
out: .word 1000
.text
lw a0, out
la a1, str1
la a2, str2
lw a3, out # indice che scorre OUT
# t0 indice che scorre le stringhe

loop1:
    add s0, a1, t0
    lb t1, 0(s0)
    beq t1, zero, end1
    sb t1, 0(a3)
    addi t0, t0, 1
    addi a3, a3, 1
    j loop1
    
end1:
    add t0, zero, zero
    
loop2:
    add s0, a2, t0
    lb t1, 0(s0)
    beq t1, zero, end2
    sb t1, 0(a3)
    addi t0, t0, 1
    addi a3, a3, 1
    j loop2
    
end2:
    sb zero, 1(a3)
    li a7, 4
    ecall
    