; this short program for emu8086 shows how to keep constant temperature
; using heater and thermometer (between 60� to 80�),
; it is assumed that air temperature is lower 60�.

; thermometer.exe is started automatically from c:\emu8086\devices.
; it is also accessible from the "virtual devices" menu of the emulator.

#start=thermometer.exe#

; temperature rises fast, thus emulator should be set to run at the maximum speed.

; if closed, the thermometer window can be re-opened from emulator's "virtual devices" menu.



#make_bin#

name "thermo"

; set data segment to code segment:
mov ax, cs
mov ds, ax

start:

in al, 125

cmp al, 60
jl  low

cmp al, 80
jle  ok
jg   high

low:
mov al, 1
out 127, al   ; turn heater "on".
MOV AL, 4cH
MOV DX, 130D
out dx, al
MOV AL, 69H
MOV DX, 130D
out dx, al
MOV AL, 67H
MOV DX, 130D
out dx, al
MOV AL, 61H
MOV DX, 130D
out dx, al
MOV AL, 64H
MOV DX, 130D
out dx, al
MOV AL, 6fH
MOV DX, 130D
out dx, al
MOV AL, 20H
MOV DX, 130D
out dx, al
jmp ok


high:
mov al, 0
out 127, al   ; turn heater "off". 
MOV AL, 44H
MOV DX, 130D
out dx, al
MOV AL, 65H
MOV DX, 130D
out dx, al
MOV AL, 73H
MOV DX, 130D
out dx, al
MOV AL, 6cH
MOV DX, 130D
out dx, al
MOV AL, 69H
MOV DX, 130D
out dx, al
MOV AL, 67H
MOV DX, 130D
out dx, al
MOV AL, 61H
MOV DX, 130D
out dx, al
MOV AL, 64H
MOV DX, 130D
out dx, al
MOV AL, 6fH
MOV DX, 130D
out dx, al 
MOV AL, 20H
MOV DX, 130D
out dx, al  
 
ok:
jmp start   ; endless loop.


