# exercicio 9: Leia um número inteiro e imprima sua tabuada de 1 a 10.

            .data
            .align 0
entrada:    .string "Digite um numero: "
pula:	    .string "\n"

    .text
    .globl main

main:
    # 1. Imprime msg de entrada
    li a7, 4 
    la a0, entrada 
    ecall
    
    #le o numero de entrada
    li a7, 5
    ecall
    
    mv t0, a0 # t0 = N (numero lido)
    
    li t1, 1
    li t2, 10
    
    
    
loop:
	bgt t1, t2, fim
	
	mul t3, t1, t0 #t3 = t1 * t0
	
	addi t1, t1, 1
	
	mv a0, t3
	
	li a7, 1
	ecall
	
	li a7, 4
	la a0, pula
	ecall
	
	j loop
	
	
fim:

	li a7, 10
	ecall
	
	
	
