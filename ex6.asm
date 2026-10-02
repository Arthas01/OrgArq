# exercicio 6. Leia dois números inteiros e imprima o maior deles
        .data
        .align 0
n1:    .string "Digite um numero: "
primeiro>segundo:    .string "O numero a>b"

    .text
    .globl main

main:
    # Imprime msg de entrada
    li a7, 4 
    la a0, entrada 
    ecall #imprimiu a msg de entrada


#nao terminei fodase