MOV AX, 0BBh
MOV bx, 5000h
Mov ss, bx
Mov Si, 0FFFFh
Jmp Contar 

Contar:
MOV SS:[SI], AX
push ax
Dec SI
Jz Finalizar
Jmp Contar
 
Finalizar: 
MOV bX, 4C00h
