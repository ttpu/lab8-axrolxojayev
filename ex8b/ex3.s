.global find_min_max

find_min_max:
    PUSH {R4, R5, R6, LR}           
    MOV  R4, R0                     
    LDR  R0, [R4]                   
    MOV  R1, R0                    
    MOV  R5, #4                     

loop:
    LDR  R6, [R4], #4              
    CMP  R6, R0                   
    MOVLT R0, R6                   
    CMP  R6, R1                     
    MOVGT R1, R6                  
    SUBS R5, R5, #1                 
    BNE  loop                      

    POP {R4, R5, R6, LR}           
    BX   LR                        

.global _start

_start:
    LDR  R0, =array                
    MOV  R1, #5                     
    BL   find_min_max               

    MOV  R2, R0                    
    MOV  R3, R1                     

.data
array: .word 3, 1, 4, 1, 5          