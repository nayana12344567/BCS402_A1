	AREA BitCounter, CODE, READONLY
start
    LDR R0, =0xF0F0F0F0   
    MOV R1, #0           
    MOV R2, #32          

count_loop
    TST R0, #1           
    ADDNE R1, R1, #1     
    MOV R0, R0, LSR #1    
    SUBS R2, R2, #1       
    BNE count_loop      
	END