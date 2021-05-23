; SET 1 - PROGRAM TO FIND SQUARE ROOT OF A NUMBER

.DATA 
    
    MSG1 DW "Enter a number: $"
    NUM DB ?   
    ROOT DB ?  

.CODE 

    MAIN:     
     MOV AX,@DATA
     MOV DS, AX 
     LEA DX, MSG1 
     MOV AH ,9
     INT 21H  
     MOV AH,1
     INT 21H  
     SUB AL,30H
     MOV NUM,AL
     MOV CL,NUM
     MOV BL,1
     MOV AL,0
    UP: 
     CMP CL,0
     JZ PRINT
     SUB CL,BL
     INC AL
     ADD BL,02
     JMP UP
    PRINT:
     MOV ROOT,AL    
     MOV AH,4CH
     INT 21H
END MAIN





