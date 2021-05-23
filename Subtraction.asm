ORG 0000H
MOV R0, #24H
MOV R1, #46H
MOV R2, #98H
MOV R3, #13H
MOV A,R0
SUBB A,R2
MOV R4,A
MOV A,R1
SUBB A,R3
MOV R5,A
END


; num1= R1R0
; num2= R3R2
; operation is num1- num2 
; result is R5R4