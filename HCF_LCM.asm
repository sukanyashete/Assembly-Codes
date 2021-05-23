ORG 0000H
	; LJMP MAIN
MAIN: MOV R1,#08H  ;num1     
      MOV R2,#06H  ;num2    
      MOV A,R1
      MOV B,R2
      CJNE A,B,NEXT   
      LJMP STOP        
NEXT: JNC LOOP  ; if num1 > num2      
      MOV A,R2  ; if num1 < num2       
      MOV B,R1
LOOP: MOV R3,B        
      DIV AB
      MOV A,R3  
      MOV R7,B         
      CJNE R7,#00H,LOOP  
STOP: MOV R4,A   ; STORE HCF
;code to compute lcm lcm=(num1+num2)/hcf
	MOV A,R1
	MOV B,R2
	MUL AB
	MOV B, #0H
	MOV B, R4
	DIV AB
	MOV R5, A  ; STORE LCM
END