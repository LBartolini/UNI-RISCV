.data
sa: .string "Hello "
sb: .string "World"
sc: .string "!"

out: .word 1000

.text
lw s0, out

la a0, sa
la a1, sb
mv a2, s0

# da finire

concat:
li t0, 0

loop_1:
j loop_1
    

end_loop_1:
jr ra












fine:
mv a0, s0
li a7, 4
ecall
