# Exercicio 7: uso de loop, imprimir um inteiro de 1 a N
        .data
        .align 0
entrada:    .string "Digite um numero: "
virgula:    .string " "

    .text
    .globl main

main:
    # 1. Imprime msg de entrada
    li a7, 4 
    la a0, entrada 
    ecall
    
    li a7, 5 #le oq foi escrito
    ecall
    
    mv t0, a0
    
    li t1, 1 #define t1 como 1, e o contador
    
    #vamos fazer o loop pra chegar até n
    
loop:

	bgt t1, t0, fim_loop
	
	mv a0, t1 #a0 = t1
	
	li a7, 1
	ecall #imprime o a0
	
	addi t1, t1, 1 #t1 = t1+1
	
	li a7, 4
	la a0, virgula
	ecall
	
	j loop
	
	
fim_loop:
	#fim programa
	li a7, 10
	ecall 