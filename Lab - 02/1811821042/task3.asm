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

OUTPUT1:
    MOV AH, 2H
    MOV DL, BH
    INT 21H  

OUTPUT2:
    MOV AH, 2H
    MOV DL, BL
    INT 21H

;Going in a newline to implement 2nd program
NEWLINE:
    MOV AH, 2H
    MOV DL, 0AH
    INT 21H
    MOV AH, 2H
    MOV DL, 0DH
    INT 21H 

INPUT3:
    MOV AH, 1H ;Taking one single-key input 
    INT 21H
    MOV BL, AL

INPUT4:
    MOV AH, 1H ;Taking one single-key input 
    INT 21H
    MOV BH, AL 

INPUT5:
    MOV AH, 1H ;Taking one single-key input 
    INT 21H
    MOV CL, AL 

SPACE:
    MOV AH, 2H 
    MOV DL, 20H
    INT 21H 

OUTPUT3:
    MOV AH, 2H
    MOV DL, CL
    INT 21H  

OUTPUT4:
    MOV AH, 2H
    MOV DL, BH
    INT 21H  

OUTPUT5:
    MOV AH, 2H
    MOV DL, BL
    INT 21H

EXIT:
    MOV AH, 4CH
    INT 21H