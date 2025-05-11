AREA Array_Sum, CODE, READONLY   ; Define code area

ENTRY                            ; Mark entry point for execution

    MOV R1, #3                   ; Load the count of numbers into R1 (e.g., 3 numbers)
    MOV R3, #0x40000000          ; Base address of the array in memory
    LDR R4, [R3]                 ; Load the first number into R4
    MOV R5, #0                   ; Initialize sum accumulator (R5) to 0

LOOP
    ADD R5, R5, R4               ; Add the current number (R4) to the sum (R5)
    ADD R3, R3, #4               ; Move to the next memory location (16-bit numbers, so increment by 4 bytes)
    SUBS R1, R1, #1              ; Decrement the count
    CMP R1, #0                   ; Check if the count is zero
    BNE LOOP                     ; If not zero, repeat the loop

    MOV R6, #0x4000000C          ; Address to store the result
    STR R5, [R6]                 ; Store the 32-bit result in the specified location

    END                          ; End of program
