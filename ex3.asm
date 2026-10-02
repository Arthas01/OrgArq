#Exercicio 3: Leia dois números inteiros e imprima o resultado da soma entre eles.
	  	.data
	  	.align 0
entrada: 	.string "Digite dois numeros: "
Soma:		.string "Soma: "

	.text
	.globl main

main:
	#imprime msg de entrada
	li a7, 4 # chama a funcao de imprimir string (4)
	la a0, entrada #imprime oq ta escrito em entrada
	ecall
	
	#lê o primeiro número
	li a7, 5
	ecall
	mv t0, a0
	
	#lê o segundo numero
	li a7, 5
	ecall
	mv t1, a0
	
	#Exibe a msg e faz a soma entre eles
	li a7, 4
	la a0, Soma
	ecall
	
	add a0, t0, t1 #faz a soma de n1 e n2
	
	li a7, 1
	ecall
	
	li a7, 10
	ecall