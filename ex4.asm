#Exercicio 4: Leia um número inteiro e imprima o seu dobro e o seu triplo. (fiz só o dobro pra poupar tempo)
	  	.data
	  	.align 0
entrada: 	.string "Digite um numero: "
saida:		.string "Dobro: "

	.text
	.globl main

main:
	#imprime msg de entrada
	li a7, 4 # chama a funcao de imprimir string (4)
	la a0, entrada #imprime oq ta escrito em entrada
	ecall
	
	#le o numero e salva em t0
	li a7, 5
	ecall
	
	mv t0, a0 # salva em t0
	
	#constante 2
	
	li t1, 2 #constante 2 no temp 1
	
	#imprime saida
	li a7, 4
	la a0, saida
	ecall
	
	#imprime a multiplicacao
	mul a0, t0, t1 #multiplica t0 por t1 -> a0 = t1*t0
	
	li a7, 1 #imprime oq foi multiplicado e ta salvo em a0
	ecall
	
	li a7, 10
	ecall
	
	