ORG 0000H

MOV A, #05H     
MOV R0, A

MOV A, #06H      
MOV R1, A

COMPARE_LOOP:
    MOV A, R0
    JZ CHECK_R1_ZERO    

    MOV A, R1
    JZ B_IS_ZERO        

    DEC R0              
    DEC R1              
    SJMP COMPARE_LOOP

CHECK_R1_ZERO:
    MOV A, R1
    JZ EQUAL              
    SJMP A_LESS_B        

B_IS_ZERO:
    SJMP A_GREATER_B     
A_GREATER_B:
    MOV 52H, #01H
    SJMP END_PROGRAM

A_LESS_B:
    MOV 52H, #0FFH
    SJMP END_PROGRAM

EQUAL:
    MOV 52H, #00H

END_PROGRAM:
    SJMP END_PROGRAM

END
