
    
    #le o numero digitado
    li a7, 5
    ecall
    mv t0, a0 #salva o numero digitado em t0
    
    # logica de ver se o numero é par
    li a0, 2 
    mv t1, a0 # atribuimos t0 = 2
    
    rem t2, t0, t1
    
    beqz t2, msgpar #pula pra msg_par se for igual a 0
    
    #senao continua aq
    
    li a7, 4
    la a0, msg_impar
    ecall
    
    j fim
    

 msgpar:
 	li a7, 4
 	la a0, msg_par
 	ecall
 
 fim:
 	li a7, 10
 	ecall