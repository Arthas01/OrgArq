# exercicio 19: Leia N números inteiros e armazene-os em memória
            .data
entrada:    .string "Digite um N: "
numeros:    .string "Digite um numero"
    .align 2 # deixar pronto pra receber memoria 
vetor:	    .space 400 #deixa 400bytes

    .text
    .globl main

main:
    # 1. Imprime msg de entrada
    li a7, 4 
    la a0, entrada 
    ecall
    
    li a7, 5 #le o numero escrito
    ecall
    mv t0, a0 #salva N em t0
    
    la t1, vetor #ponteiro do vetor t1 = ponteiro pro vetor
    li t2, 0#contador começando em 0
    
   # li t1, 1 #counter até N
    
    #vamos usar bgt pra quando counter (t2) > N (t0)
    
loop:

	bgt t2,t0, fim
	
	#le o numero
	li a7, 4
	la a0, numeros
	ecall
	
	li a7, 5
	ecall
	
	sw a0, 0(t1) #salva na ram
	
	addi t1, t1, 4
	addi t2, t2, 1
	
	j loop
	
fim:

	li a7, 10
	ecall
	
	
    
    
    
    
    
    