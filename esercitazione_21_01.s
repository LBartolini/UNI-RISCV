.data
arr: .string "19824209511982340954"

.text
li t6, 3 # minimo numero di occorrenze necessarie
li t5, 20 # dimensione del vettore
li t4, 4 # numero da contare
li s0, 0 # default per valore di output
li a0, 0 # indice per scorrere il vettore
la a1, arr
li a2, 0 # contatore occorrenze

loop:
bge a2, t6, fine_anticipata
bge a0, t5, fine

add t0, a1, a0
lb t1, 0(t0)
addi t1, t1, -48

bne t1, t4, incr
addi a2, a2, 1

incr:
addi a0, a0, 1
j loop

fine_anticipata:
li s0, 1
fine:
add a0, s0, zero
li a7, 1
ecall