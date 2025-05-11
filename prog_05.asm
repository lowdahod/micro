AREA Square, CODE, READONLY      ; Define code area

ENTRY                            ; Mark entry point for execution

    LDR R0, =TABLE1              ; Load the base address of the lookup table into R0
    MOV R1, #5                   ; Load the number to find the square of (e.g., 5) into R1
    SUB R1, R1, #1               ; Adjust index to 0-based (as table starts from 0th position)
    LSL R1, R1, #2               ; Multiply index by 4 (word size) to get offset
    ADD R0, R0, R1               ; Add offset to base address to locate the correct entry
    LDR R2, [R0]                 ; Load the square value from the lookup table into R2

    NOP                          ; Placeholder for further instructions or ending
    END                          ; End of program

TABLE1
    DCD 0x00000001               ; 1^2 = 1
    DCD 0x00000004               ; 2^2 = 4
    DCD 0x00000009               ; 3^2 = 9
    DCD 0x00000010               ; 4^2 = 16
    DCD 0x00000019               ; 5^2 = 25
    DCD 0x00000024               ; 6^2 = 36
    DCD 0x00000031               ; 7^2 = 49
    DCD 0x00000040               ; 8^2 = 64
    DCD 0x00000051               ; 9^2 = 81
    DCD 0x00000064               ; 10^2 = 100
    END
