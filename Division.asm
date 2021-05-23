ORG 0000H
	MOV A, #26H
	MOV B, #4H
	DIV AB
	MOV R1, A  ; Quotient
	MOV R2, B  ; Remainder
END