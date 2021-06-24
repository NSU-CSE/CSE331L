.model
.stack 100H
.code

MOV AH, 2  ;AH = 2
ADD AH, 5  ;AH = 2 + 5 = 7
MOV AL, 3  ;AL = 3
SUB AH, AL ;AH = AH - AL = 7 - 3 = 4

INC BL     ;BL = BL + 1 = 0 + 1 = 1
DEC DH     ;DH = DH - 1 = 0 - 1 = -1 = FFH

MOV AH, 4ch
INT 21H
    