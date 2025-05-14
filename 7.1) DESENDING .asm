	AREA EXERCISE7A, CODE, READONLY
ENTRY
START 
	  LDR R0, MEMORY 
	  LDRB R8, [R0]
	
LOOP3 MOV R1, R8   		 
	  ADD	R0, R0, #2

LOOP2 LDRH R3,[R0]
	  ADD R0, R0, #02
	  LDRH R5, [R0]
	  CMP R3, R5   			
	  BGT LOOP1	
	  STRH R3,[R0]  			
	  SUB R0, R0, #02  		
	  STRH R5, [R0]
	  ADD R0, R0, #02		

LOOP1  SUB R1, R1, #01			
	  CMP R1, #01			
	  BNE LOOP2			
	  SUB R8, R8, #01		
	  CMP R8, #01			
	  LDR R0, MEMORY
	  BNE LOOP3			

STOP    B STOP

MEMORY  DCD 	0x40000000 
	  END	
