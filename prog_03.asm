AREA FACT, CODE, READONLY       ; Define code area

ENTRY                           ; Mark entry point for execution

    MOV R0, #5                  ; Load the number (5) into R0
    MOV R1, #1                  ; Initialize R1 to 1 (factorial accumulator)

LOOP
    CMP R0, #0                  ; Compare R0 with 0
    BEQ STOP                    ; If R0 is 0, exit the loop
    MUL R1, R1, R0              ; Multiply the current factorial value (R1) by R0
    SUB R0, R0, #1              ; Decrement R0 by 1
    B LOOP                      ; Branch to LOOP to continue

STOP
    NOP                         ; No operation (placeholder for the end of the program)
    END                         ; End of program
