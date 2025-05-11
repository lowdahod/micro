AREA SUM_OF_10, CODE, READONLY  ; Define code area

ENTRY                           ; Mark entry point for execution

    MOV R0, #10                 ; Load the count (10) into R0
    MOV R1, #0                  ; Initialize R1 to 0 (sum accumulator)
    MOV R2, #1                  ; Initialize R2 to 1 (current number to add)

LOOP
    ADD R1, R1, R2              ; Add the current number (R2) to the sum (R1)
    ADD R2, R2, #1              ; Increment the current number by 1
    SUBS R0, R0, #1             ; Decrement the count (R0) by 1
    BNE LOOP                    ; If R0 is not zero, branch to LOOP

    END                         ; End of program
