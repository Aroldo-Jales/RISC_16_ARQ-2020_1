/*      lw 1,0,a            load a 
        lw 2,0,a            load negação de a 
        lw 3,0,b            load b 
        lw 4,0,c            load c 
neg:    nand 2,2,2          negação de a 
        addi 2,2,1          soma da negação de a 
for:    beq 1,3,done        if a == b, se sim vai para done
        add 4,4,2           c = c - a 
        addi 1,1,1          +=1 ao valor de a 
        beq 0,0,for         retorna para o início do loop 
done:   halt                FIM DA EXECUÇÃO 
a:      .fill 5             define o valor de a 
b:      .fill 10            define o valor de b 
c:      .fill 15            define o valor de c*/      

//-----------------------------------------------------------------------------------


        lw 1,0,a          
        lw 2,0,a           
        lw 3,0,b           
        lw 4,0,c           
neg:    nand 2,2,2         
        addi 2,2,1        
for:    beq 1,3,done       
        add 4,4,2          
        addi 1,1,1         
        beq 0,0,for        
done:   halt              
a:      .fill 5            
b:      .fill 10           
c:      .fill 15             
