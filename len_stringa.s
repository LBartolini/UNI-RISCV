# Data una stringa, scrivere un codice RISC-V che indica quanto è lunga

.data
str: .string "esempio"

.text
la a1, str # ptr alla stringa
li a0, 0 # indice loop

loop:
add s1, a1, a0
lb t0, 0(s1)
beq t0, zero, end
addi a0, a0, 1
j loop

end:
li a7, 1
ecall