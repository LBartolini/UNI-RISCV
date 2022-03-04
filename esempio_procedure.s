.data
.text
li s0, 10 # g
li s1, 4  # h
li s2, 1  # i
li s3, 3  # j

mv a0, s0
mv a1, s1
mv a2, s2
mv a3, s3

jal leaf

j fine

leaf:
    
add t0, a0, a1
add t1, a2, a3

sub a0, t0, t1 

jr ra

fine:
li a7, 1
ecall