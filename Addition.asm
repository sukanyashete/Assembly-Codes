ORG 0000H
	SJMP 30H
	ORG 30H
	MOV R0,#30H
	MOV A,@R0
	INC R0
	ADD A,@R0
	MOV R4,A
	INC R0
	MOV A,@R0
	INC R0
	ADDC A,@R0
	JNC L1
	INC R2
	MOV R3,A
	L1:
	MOV R3,A
	END