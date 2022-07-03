.MODEL SMALL
.STACK 100H
.DATA
    STRING DB "world$"
    CONVERT DB 20H ;HEX TO DECIMAL
    
.CODE
    TRANSFER_TO_DS: 
        MOV DX, @DATA
        MOV DS, DX 
       
    FOR_W:   
        MOV AL, STRING[0] 
        SUB AL, CONVERT 
        MOV AH, 2H
        MOV DL, AL
        INT 21H 
        
    FOR_O:
        MOV CL, STRING[1] 
        SUB CL, CONVERT 
        MOV AH, 2H
        MOV DL, CL
        INT 21H
        
    FOR_R:
        MOV BL, STRING[2]
        SUB BL, CONVERT
        MOV AH, 2H
        MOV DL, BL
        INT 21H
        
    FOR_L:
        MOV BH, STRING[3]
        SUB BH, CONVERT
        MOV AH, 2H
        MOV DL, BH
        INT 21H 
        
    FOR_D:
        MOV CH, STRING[4] 
        SUB CH, CONVERT
        MOV AH, 2H
        MOV DL, CH
        INT 21H
    
    EXIT:
        MOV AH, 4CH
        INT 21H
    