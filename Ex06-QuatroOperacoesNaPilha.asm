MOV AX, 0602h
MOV bx, 5000h
Mov ss, bx
Mov Si, 0FFFFh
Jmp Soma 

Soma:
ADD ah, al
MOV SS:[SI], Ah
DEC SI
DEC SI
Jmp subtracao
          
          
Subtracao:
MOV AX, 0602h
NOT Al
ADD Al, 01h
ADD Ah, Al 
MOV SS:[SI], Ah
DEC SI
DEC SI
Jmp multiplicacao  
             
             
Multiplicacao:
MOV AX, 0602h
MOV cl, al
MOV ch, ah
DEC CL
Multiplicacao2:
ADD AH, ch
DEC CL
MOV SS:[SI], Ah 
jz divisao
jmp multiplicacao2
         
         
Divisao:
MOV AX, 0602h
DEC SI
DEC SI
NOT al
ADD al, 01h
Mov ch, 00h
MOV bx, SI 
Divisao2:
MOV SI, bx
INC Ch 
MOV SS:[SI], ch
DEC Si
ADD AH,al 
MOV SS:[SI], ah
jz finalizar
jmp divisao2
         
         
 
Finalizar: 
MOV bX, 4C00h