.data
esempio: .string "pI po"

.text
la a0 esempio
li a1, 0
li t2, 97
li t3, 122

for:
add a3, a1, a0
lb t1, 0(a3)
beq t1 zero fine

blt t1, t2, else
bgt t1, t3, else
addi t1, t1, -32
sb t1, 0(a3)
else:
    
addi a1 a1 1
j for
fine:
    
li a7, 4
ecall