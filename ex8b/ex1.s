.global _start
_start:
    MOV     R0, #0
    LDR     R6, =result

loop:
    ADD     R4, R0, R0
    STR     R4, [R6], #4
    ADD     R0, R0, #1
    CMP     R0, R1
    BLT     loop

.data
result: .skip 40