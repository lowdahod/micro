AREA MULTIPLY, CODE, READONLY  ; Define code area

ENTRY                          ; Mark entry point for execution

    LDR R1, =0x6542            ; Load first 16-bit binary number into R1
    LDR R2, =0x2342            ; Load second 16-bit binary number into R2
    MUL R3, R1, R2             ; Multiply the values in R1 and R2, store result in R3

    END                        ; End of program
