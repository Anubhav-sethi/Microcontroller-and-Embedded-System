ORG 0000H

MOV A, #10      
ADD A, #5        

MOV B, #100      
MUL AB           


ADD A, #10       
INC A            
INC A            

HERE:
SJMP HERE        

END
