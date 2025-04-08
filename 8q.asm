	AREA MemoryDemo, CODE, READONLY
ENTRY
    LDR r1, =0x40000000  ; Initialize r1 with the base memory address

    LDR r5, [r1]         ; Load value from address 0x40000000 into r5
    LDR r6, [r1, #4]     ; Load value from address 0x40000004 into r6
    LDR r7, [r1, #8]     ; Load value from address 0x40000008 into r7

    ADD r2, r5, r6       ; Add values in r5 and r6, store result in r2
    SUB r2, r2, r7       ; Subtract value in r7 from r2       
    BX LR  

END