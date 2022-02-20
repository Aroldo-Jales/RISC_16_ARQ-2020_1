/*      lw 1,0,a            load a 
        lw 2,0,b            load b 
        lw 3,0,c            load c 
        lw 7,0,d            load d 
mult_b: beq 1,4,reset       verifica a repetição da multiplicação 
        addi 4,4,1          soma +1 ao contador 
        add 5,5,2           recebe o valor da soma 
        beq 0,0,mult_b      retorna para mult_b 
reset:  add 4,0,0           zera o valor do contador 
        beq 0,0,verify      segue para verify: 
verify: beq 4,5,done        verifica se c é menor que a multiplicação
        beq 4,3,resetm      se igual, segue para resetm 
        addi 4,4,1          soma +1 ao contador 
        beq 0,0,verify      retorna para verify: 
resetm: add 5,0,0           reseta o registrador da multiplicação
        beq 0,0,mult_c      segue para mult_c
mult_c: beq 6,7,swap        verifica a repetição da multiplicação 
        addi 6,6,1          soma +1 ao contador 
        add 5,5,3           recebe o valor da soma 
        beq 0,0,mult_c      retorna para mult_c: 
swap:   beq 3,5,done        verifica se C == a multiplicação 
        addi 3,3,1          soma +1 a C 
        beq 0,0,swap        retorn para swap: 
done:   halt
a:      .fill 5             define o valor de a 
b:      .fill 5             define o valor de b 
c:      .fill 20            define o valor de c 
d:      .fill 3             define o valor de d*/

        lw 1,0,a
        lw 2,0,b
        lw 3,0,c
        lw 7,0,d
mult_b: beq 1,4,reset 
        addi 4,4,1
        add 5,5,2       
        beq 0,0,mult_b
reset:  add 4,0,0
        beq 0,0,verify
verify: beq 4,5,done
        beq 4,3,resetm
        addi 4,4,1
        beq 0,0,verify
resetm: add 5,0,0
        beq 0,0,mult_c
mult_c: beq 6,7,swap
        addi 6,6,1
        add 5,5,3
        beq 0,0,mult_c
swap:   beq 3,5,done
        addi 3,3,1
        beq 0,0,swap
done:   halt
a:      .fill 5
b:      .fill 5
c:      .fill 20
d:      .fill 3         
