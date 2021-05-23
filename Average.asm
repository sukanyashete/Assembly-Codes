INCLUDE irvine32.inc

.data
	msg1 byte "Enter the no.of elements: "
	msg2 byte "Enter the elements - "

.code
main PROC
	mov edx, offset msg1
	call writestring
	call readint
	mov ebx, eax
	mov edx, ebx
	mov edx, offset msg2
	call writestring
	;sum:  
	;	call readint

main endp
end main