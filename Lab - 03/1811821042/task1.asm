.MODEL SMALL
.STACK 100H
.DATA
    ARRAY1 DB 1, 3, 5, 7, 9
    ARRAY2 DB 5 DUP(?) 
    CONVERT DB 30H
    
.CODE 
    MOV DX, @DATA
    MOV DS, DX
    
    MOV AL, ARRAY1[0] 
    ADD AL, CONVERT
    MOV ARRAY2[0], AL 
    MOV AH, 2H
    MOV DL, ARRAY2[0]
    INT 21H
    
    MOV AH, ARRAY1[1] 
    ADD AH, CONVERT
    MOV ARRAY2[1], AH 
    MOV AH, 2H
    MOV DL, ARRAY2[1]
    INT 21H
    
    MOV BL, ARRAY1[2]
    ADD BL, CONVERT
    MOV ARRAY2[2], BL
    MOV AH, 2H
    MOV DL, ARRAY2[2]
    INT 21H
    
    MOV BH, ARRAY1[3]
    ADD BH, CONVERT
    MOV ARRAY2[3], BH
    MOV AH, 2H
    MOV DL, ARRAY2[3]
    INT 21H
    
    MOV CL, ARRAY1[4] 
    ADD CL, CONVERT
    MOV ARRAY2[4], CL
    MOV AH, 2H
    MOV DL, ARRAY2[4]
    INT 21H
    
    EXIT:
        MOV AH, 4CH
        INT 21H
    