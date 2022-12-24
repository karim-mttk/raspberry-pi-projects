@creating a basic-for-loop

.global _start
_start:	MOV R2, #1

loop: 
	ADD R2, #1
	CMP R2, #10
	BLE loop
	
			
@a reverse for-loop

	MOV R3, #10
loop2: 
	SUBS R2, #1
	BNE loop2

	mov  R7, #1    @service command code 1 
	svc  0