


ORG 100h    

LEA SI, a1  
LEA DI, a2 
MOV CX, 4
MOV AH, 0Eh  

array:  

LODSB  
push ax
INT 10h 
LOOP array 
  
MOV CX, 4   
        
        
reverse:
 
pop ax 
STOSB  
INT 10h

LOOP reverse
        
        
RET        
                            
a1 DB 'c', 'e', 'n', 'g'  
a2 DB 4 dup(0)




