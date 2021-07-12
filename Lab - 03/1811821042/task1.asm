.MODEL SMALL
.STACK 100H
.DATA
    ARRAY1 DB 5 DUP(?)
    ARRAY2 DB 5 DUP(?)  
    STRING1 DB "ENTER ARRAY 1: $" 
    STRING2 DB 0AH, 0DH, "ARRAY 2: $"
    
.CODE 
    TRANSFER:
        MOV DX, @DATA
        MOV DS, DX
        
        LEA DX, STRING1
        MOV AH, 9H
        INT 21H
        
        MOV SI, 0 
        
    INPUT1:
        MOV AH, 1H 
        INT 21H 
        MOV ARRAY1[SI], AL 
        MOV BL, ARRAY1[SI]
        MOV ARRAY2[SI], BL 
         
        
    INPUT2:
        INC SI
        MOV AH, 1H 
        INT 21H 
        MOV ARRAY1[SI], AL 
        MOV BH, ARRAY1[SI]
        MOV ARRAY2[SI], BH 
         
        
    INPUT3:
        INC SI
        MOV AH, 1H 
        INT 21H 
        MOV ARRAY1[SI], AL 
        MOV CL, ARRAY1[SI]
        MOV ARRAY2[SI], CL
        
        
    INPUT4:
        INC SI
        MOV AH, 1H 
        INT 21H 
        MOV ARRAY1[SI], AL 
        MOV CH, ARRAY1[SI]
        MOV ARRAY2[SI], CH
         
        
    INPUT5:
        INC SI
        MOV AH, 1H 
        INT 21H 
        MOV ARRAY1[SI], AL 
        MOV DH, ARRAY1[SI]
        MOV ARRAY2[SI], DH 
        
    NEWLINE:
        MOV AH, 2H
        MOV DL, 0AH
        INT 21H
        MOV AH, 2H
        MOV DL, 0DH
        INT 21H
        
        
        LEA DX, STRING2
        MOV AH, 9H
        INT 21H
        
        MOV DI, 0 
        
    OUTPUT1:
        MOV AH, 2H
        MOV DL, ARRAY2[DI]
        INT 21H
        
    OUTPUT2:
        INC DI
        MOV AH, 2H
        MOV DL, ARRAY2[DI]
        INT 21H 
         
    OUTPUT3:
        INC DI
        MOV AH, 2H
        MOV DL, ARRAY2[DI]
        INT 21H
         
    OUTPUT4:
        INC DI
        MOV AH, 2H
        MOV DL, ARRAY2[DI]
        INT 21H
         
    OUTPUT5:
        INC DI
        MOV AH, 2H
        MOV DL, ARRAY2[DI]
        INT 21H
        
    
    EXIT:
        MOV AH, 4CH
        INT 21H
    