.global _start
_start:
    MOV     R0, #0
    MOV     R2, #0

loop:
    ADD     R2, R2, R0
    ADD     R0, R0, #1
    CMP     R0, R1
    BLT     loop