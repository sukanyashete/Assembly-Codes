ORG 0000H
MOV R5,#35H
MOV A,R5
MOV B,R5
MUL AB
MOV R1, A
MOV R2, B
END

; result as R2R1