; Program to find the largest number in an array of 32 numbers (ARM Assembly)
            AREA    LargestNumber, CODE, READONLY
            ENTRY
            
            ; Initialize registers
            MOV     R5, #32          ; Array size counter (32 elements)
            LDR     R1, =Values      ; Load address of array
            LDR     R2, [R1], #4     ; Load first element as initial largest (R2)

Loop_Large  SUBS    R5, R5, #1       ; Decrement counter
            BEQ     Done_Large        ; If counter is zero, exit loop
            
            LDR     R3, [R1], #4     ; Load next array element
            CMP     R2, R3           ; Compare current largest with new element
            BHI     Loop_Large        ; If current is larger, skip update
            MOV     R2, R3           ; Update largest number
            B       Loop_Large        ; Continue loop

Done_Large  ; Store the largest number
            LDR     R6, =ResultLarge
            STR     R2, [R6]         ; Store result
            
Stop_Large  B       Stop_Large       ; Infinite loop to end program

; Data Section
            AREA    ArrayData, DATA, READWRITE
Values      DCD     0x44444444, 0x88888899, 0x11111111, 0x53333333
            DCD     0x44040000, 0x88888888, 0x99999999
            ; Add more values here to make 32 elements
            ; (Example additional values)
            DCD     0xAAAAAAAA, 0xBBBBBBBB, 0xCCCCCCCC, 0xDDDDDDDD
            DCD     0xEEEEEEEE, 0xFFFFFFFF, 0x12345678, 0x9ABCDEF0
            DCD     0x55555555, 0x66666666, 0x77777777, 0x22222222
            DCD     0x33333333, 0x44444444, 0x55555555, 0x66666666
            DCD     0x77777777, 0x88888888, 0x99999999, 0xAAAAAAAA
            DCD     0xBBBBBBBB, 0xCCCCCCCC, 0xDDDDDDDD, 0xEEEEEEEE
            DCD     0x11111111, 0x22222222, 0x33333333
            
ResultLarge DCD     0                ; Memory to store largest number

            END
