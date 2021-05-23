.386
.MODEL FLAT, stdcall
.STACK 4096
ExitProcess PROTO, dwExitword:DWORD

.data
sum DWORD 0

.code 
_main PROC
mov eax, 10
add eax, 20

 INVOKE ExitProcess, 0
_main ENDP
END
