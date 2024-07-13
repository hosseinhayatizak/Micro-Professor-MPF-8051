; 8051 Assembly Code to 
; Find a Factorial of N 
;   Programmer Name:Abhay KAgalakar

ORG 0000H
MOV R0,#5 ;Number N
MOV A,R0
ACALL FACT ;11bit function call
fact:DEC R0
     CJNE R0,#01,rel ;value of R0 is compared with 1
     SJMP stop  ;if R0=1, stop execution
rel:MOV B,R0
    MUL AB
    ACALL FACT ;calling back the same function
stop:END