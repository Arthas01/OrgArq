#Exercicio 2, leia um numero inteiro fornecido pelo usuario e escreva esse valor
	  	.data
	  	.align 0
entrada: 	.string "Digite um numero: "
saida:		.string "Numero: "

	.text
	.globl main

main:
	#imprime msg de entrada
	li a7, 4 # chama a funcao de imprimir string (4)
	la a0, entrada #imprime oq ta escrito em entrada
	ecall
	
	#le o numero inserido
	li a7, 5 #chama a funcao de ler inteiro no terminal (5)
	ecall
	#o valor já fica salvo no registrador a0, agora temos que jogar esse valor do a0 pea um reg temporario
	
	mv t1, a0 #t1 = a0
	
	#imprime o numero lido
	li a7, 4
	la a0, saida #imprime a string de saida
	ecall

	mv a0, t1  #move o valor de t1 de volta pra a0
	li a7, 1 #imprime oq ta no a0 (servico 1 da ecall)
	ecall
	
	li a7, 10 #serviço de encerrar
	ecall
	
	

	

	