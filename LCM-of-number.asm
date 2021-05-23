; SET 1 - PROGRAM TO FIND LCM OF TWO NUMBERS

ORG 0000H
	MAIN: MOV R1,#07H  ;num1     
      MOV R2,#03H  ;num2    
      MOV A,R1
      MOV B,R2
      CJNE A,B,NEXT   
      LJMP STOP        
	NEXT: JNC LOOP       
      MOV A,R2       
      MOV B,R1
	LOOP: MOV R3,B        
      DIV AB
      MOV A,R3  
      MOV R7,B         
      CJNE R7,#00H,LOOP  
	STOP: MOV R4,A  
	  MOV A,R1
	  MOV B,R2
	  MUL AB
	  MOV B, #0H
	  MOV B, R4
	  DIV AB
	  MOV R5, A  ; STORES LCM
END