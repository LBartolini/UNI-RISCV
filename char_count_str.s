# data una stringa ed un carattere contarne il numero di occorrenze nella stringa

.data
str: .string "esempio stringa"

.text
la a1, str
li a0, 0 # contatore
li a2, 101 # char: 
# t0 indice che scorre la stringa

loop:
    add s0, a1, t0
    lb t1, 0(s0)
    beq t1, zero, end
    bne t1, a2, incr
    addi a0, a0, 1
    
incr:
    addi t0, t0, 1
    j loop
    
end:
li a7, 1
ecall