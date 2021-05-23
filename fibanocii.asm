ORG 0000H
	
	MOV R2, #15  ; no of digits to be printed
	MOV R0, #20H  ; memory location
	MOV @R0,#0
	INC R0
	MOV @R0,#1
	INC R0
	MOV A, #0
	MOV R3, #1
	DEC R2
	DEC R2
	loop:
	ADD A,R3
	MOV @R0,A
	MOV A,R3
	MOV 03H, @R0
	INC R0
	DJNZ R2,loop

END