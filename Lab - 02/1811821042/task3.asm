.MODEL SMALL
.STACK 100H
.DATA 
.CODE

INPUT1:
    MOV AH, 1H ;AL = INPUT
    INT 21H    ;INTERRUPT 
    MOV BL, AL ;BL = AL

INPUT2:
    MOV AH, 1H ;AL = INPUT
    INT 21H    ;INTERRUPT
    MOV BH, AL ;BH = AL

OUTPUT1:
    MOV AH, 2H ;OUTPUT
    MOV DL, BH ;DL = BH
    INT 21H    ;INTERRUPT

OUTPUT2:
    MOV AH, 2H ;OUTPUT
    MOV DL, BL ;DL = BL
    INT 21H    ;INTERRUPT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;GOING IN A NEWLINE TO IMPLEMENT 2ND PROGRAM;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

NEWLINE:
    MOV AH, 2H ;OUTPUT
    MOV DL, 0AH;NEWLINE
    INT 21H    ;INTERRUPT
    MOV AH, 2H ;OUTPUT
    MOV DL, 0DH;CARRIAGE RETURN
    INT 21H    ;INTERRUPT

INPUT3:
    MOV AH, 1H ;AL = INPUT
    INT 21H    ;INPUT
    MOV BL, AL ;BL = AL

INPUT4:
    MOV AH, 1H ;AL = INPUT 
    INT 21H    ;INPUT
    MOV BH, AL ;BH = AL

INPUT5:
    MOV AH, 1H ;AL = INPUT 
    INT 21H    ;INTERRUPT
    MOV CL, AL ;CL = AL

SPACE:
    MOV AH, 2H ;OUTPUT
    MOV DL, 20H;DISPLAY SPACE
    INT 21H    ;INTERRUPT

OUTPUT3:
    MOV AH, 2H ;OUTPUT
    MOV DL, CL ;DL = CL
    INT 21H    ;INTERRUPT

OUTPUT4:
    MOV AH, 2H ;OUTPUT
    MOV DL, BH ;DL = BH
    INT 21H    ;INTERRUPT

OUTPUT5:
    MOV AH, 2H ;OUTPUT
    MOV DL, BL ;DL = BL
    INT 21H    ;INTERRUPT

EXIT:
    MOV AH, 4CH ;CONTROL RETURNS TO OS
    INT 21H     ;INTERRUPT