.data
.text

.globl main

main:

li $t0, 1 #asignamos 1 a t0
li $t1, 1
li $t2, 7

for:
bgt $t0, $t2, print #sale del loop si t0<=t2

mult $t1, $t0 #multiplica
mflo $t1

addi $t0, 1
j for #reitera el codigo

printf:
li $v0, 1
move $a0, $t1
syscall

exit:
li $v0, 10
syscall #sale del programa
