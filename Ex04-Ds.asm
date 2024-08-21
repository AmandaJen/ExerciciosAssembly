inicio:
MOV BX, 04000h
MOV DX, 01h
MOV DS, BX
MOV SI, 0000h
MOV CX, 0FFFFh
JMP salto
HLT

salto:

MOV AX, 0AAh
MOV DS: [SI], AX
ADD SI, DX
CMP SI, CX
JB salto
RET inicio 

