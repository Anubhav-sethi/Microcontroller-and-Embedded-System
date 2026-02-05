ORG 0000H

MOV R0, #40H      
MOV R1, #40H      
MOV R2, #20H     

SCAN:
    MOV A, @R0        
    CJNE A, #0FFH, STORE
    SJMP NEXT         
STORE:
    MOV @R1, A        
    INC R1

NEXT:
    INC R0
    DJNZ R2, SCAN

FILL:
    CJNE R1, #60H, ZERO
    SJMP DONE

ZERO:
    MOV @R1, #00H
    INC R1
    SJMP FILL

DONE:
    SJMP DONE         
END
