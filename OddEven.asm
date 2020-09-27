INCLUDE irvine32.inc

.data
	msg1 byte "Enter a number=  ", 0
	msg2 byte "Even number ",0
	msg3 byte "Odd number ",0

.code
main PROC
	mov edx, offset msg1
	call writestring
	call readint ; read first number	 
	mov edx,0
	mov ebx, 2
	div ebx 
	cmp edx,0 
	je ev
	mov edx, offset msg3
	call writestring
	call crlf ; print next line "\n"
	exit	
ev:
	mov edx, offset msg2
	call writestring
	call crlf
	exit

main ENDP
END main
