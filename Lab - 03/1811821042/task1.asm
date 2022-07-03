# Task-1

.MODEL SMALL
.STACK 100H
.DATA
    ARRAY1 DB 1, 3, 6, 7, 9
    ARRAY2 DB 5 DUP(?) 
    CONVERT DB 30H
    
.CODE 
    TRANSFER_TO_DS:
        MOV DX, @DATA
        MOV DS, DX
        
        MOV SI, 0 
        
    INDEX_0:
        MOV AL, ARRAY1[SI] 
        ADD AL, CONVERT
        MOV ARRAY2[SI], AL   
        
    INDEX_1:
        INC SI
        MOV AH, ARRAY1[SI] 
        ADD AH, CONVERT
        MOV ARRAY2[SI], AH   
        
    INDEX_2:
        INC SI
        MOV BL, ARRAY1[SI]
        ADD BL, CONVERT
        MOV ARRAY2[SI], BL 
        
    INDEX_3:
        INC SI
        MOV BH, ARRAY1[SI]
        ADD BH, CONVERT
        MOV ARRAY2[SI], BH         
        
    INDEX_4: 
        INC SI
        MOV CL, ARRAY1[SI] 
        ADD CL, CONVERT
        MOV ARRAY2[SI], CL 
    
    EXIT:
        MOV AH, 4CH
        INT 21H
    
