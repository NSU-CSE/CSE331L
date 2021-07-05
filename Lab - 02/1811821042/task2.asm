.MODEL SMALL
.STACK 100H
.DATA 
.CODE

INPUT1:
    MOV AH, 1H ;Taking one single-key input 
    INT 21H
    MOV BL, AL

INPUT2:
    MOV AH, 1H ;Taking one single-key input 
    INT 21H
    MOV BH, AL

SPACE:
    MOV AH, 2H 
    MOV DL, 20H
    INT 21H 

OUTPUT1:
    MOV AH, 2H
    MOV DL, BL
    INT 21H  

OUTPUT2:
    MOV AH, 2H
    MOV DL, BH
    INT 21H

EXIT:
    MOV AH, 4CH
    INT 21H