.model  small
.stack
.data
MSG_GET_NUM db 0dh, 0ah, "Enter your number: $"
MSG_PRINT_FACT db 0dh, 0ah, "Factorial is  $"
FACT dw ?

BUFF    db 2
        db ?
        db 2 dup(0)

.code
main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, MSG_GET_NUM
    call printstr
    lea dx, BUFF
    call getnum
    
    mov dx, 0
    call factorial
    
    lea dx, MSG_PRINT_FACT
    call printstr
    call printnum
    
    mov ah, 4ch
    int 21h
main endp

factorial proc
    cmp ax, 1
    je END_FACT
    
    push bx
        
    mov bx, ax
    dec ax
    call factorial
    mul bx
    
    pop bx
END_FACT:
    ret
factorial endp

printstr proc
    push ax
    mov ah, 9
    int 21h
    pop ax
    ret
printstr endp

getnum proc
    push bx
    push cx
    push dx
    push si
    
    mov ah, 0ah
    int 21h
    
    lea si, BUFF + 1
    mov ch, 0
    mov cl, [si]
    mov ax, 0
    mov dx, 0
    mov bx, 10
LOOP_TO_INT:
    inc si
    mul bx
    mov dx, 0
    mov dl, [si]
    add ax, dx
    sub ax, '0'
    loop LOOP_TO_INT
    
    pop si
    pop dx
    pop cx
    pop bx
    
    ret
getnum endp

printnum proc
    push ax
    push bx
    push cx
    push dx
    
    mov bx, 10
    mov cx, 0
    
DIGIT_STACK_LOOP:
    mov dx, 0
    div bx
    add dx, '0'
    push dx
    inc cx
    cmp ax, 0
    jne DIGIT_STACK_LOOP
    
    mov ah, 2
DIGIT_PRINT_LOOP:
    pop dx
    int 21h
    loop DIGIT_PRINT_LOOP
    
    pop dx
    pop cx
    pop bx
    pop ax
    ret
printnum endp

end main
