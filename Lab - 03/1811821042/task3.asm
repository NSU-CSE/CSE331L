.MODEL SMALL
.STACK 100H
.DATA

.CODE
    INPUT1:
        MOV AH, 1H
        INT 21H
        MOV BL, AL

    INPUT2:
        MOV AH, 1H
        INT 21H
        MOV BH, AL 
        
    ADDITION:
        ADD BH, BL  ;BH = BH + BL
        SUB BH, 30H ;ASCII TO DECIMAL

    NEWLINE:
        MOV AH, 2H
        MOV DL, 0AH
        INT 21H
        MOV AH, 2H
        MOV DL, 0DH
        INT 21H 

    RESULT:
        MOV AH, 2H
        MOV DL, BH
        INT 21H 
        
    EXIT:
        MOV AH, 4CH
        INT 21H