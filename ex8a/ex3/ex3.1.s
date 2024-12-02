.global 
_start_start:

    MOV     R0, #0
    LDR     R1, =0x40000000
loop:    STR     R0, [R1]
    ADD     R0, R0, #1    
    ADD     R1, R1, #4
    CMP     R0, #10    
    BLT     loop