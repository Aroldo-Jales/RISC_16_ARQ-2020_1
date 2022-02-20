/*      lw 1,0,a            load a
        lw 2,0,b            load b
        lw 3,0,c            load c
        lw 7,0,d            load d
for_ab: beq 1,2,mult_c      enquanto a < b / se a == b mult_c
        addi 1,1,1          soma +1 em a
        addi 3,3,1          soma +1 em c
        beq 0,0,for_ab      retorna para for_ab
mult_c: beq 4,7,reset       verifica se o contador < 3 / se o contador == 3
        addi 4,4,1          soma +1 ao contador
        add 5,5,3           recebe o valor da soma
        beq 0,0,mult_c      retorna para mult_c    
reset:  add 4,0,0           zera o valor do contador
        addi 6,6,10         soma +10 ao R6
        beq 0,0,more_t      segue para more_t
more_t: beq 4,6,final       verifica se o contador == 10
        beq 4,5,done        verifica se o contador == R5
        addi 4,4,1          soma +1 ao contador
        beq 0,0,more_t      retorna para more_t:
final:  lw 1,0,b            a == b
        addi 1,1,1          soma +1 ao a 
        beq 0,0,done        sehgue para done
done:   halt                fim da execução
a:      .fill 5             define o valor de a
b:      .fill 7             define o valor de b
c:      .fill 4             define o valor de c
d:      .fill 3             define o valor de d*/

        lw 1,0,a       
        lw 2,0,b        
        lw 3,0,c
        lw 7,0,d       
for_ab: beq 1,2,mult_c
        addi 1,1,1
        addi 3,3,1
        beq 0,0,for_ab
mult_c: beq 4,7,reset
        addi 4,4,1
        add 5,5,3
        beq 0,0,mult_c
reset:  add 4,0,0
        addi 6,6,10
        beq 0,0,more_t
more_t: beq 4,6,final
        beq 4,5,done
        addi 4,4,1
        beq 0,0,more_t

final:  lw 1,0,b
        addi 1,1,1
        beq 0,0,done
done:   halt
a:      .fill 3
b:      .fill 5
c:      .fill 2
d:      .fill 3