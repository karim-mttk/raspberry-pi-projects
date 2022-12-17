@an example of 64bit adition

.global _start

_start: 
@initializing the first 64-bit

	MOV R2, #0x00000003
	MOV R3, #0xFFFFFFFF  @this will convert to MVN (-1)
@2nd 64-bit
	MOV R4, #0x00000005
	MOV R5, #0x00000001 
	
	ADDS R1, R3, R5 @lower order    
	ADC  R0, R2, R4 @higher order
	
	mov R7, #1		@service command code 1 
	svc 0			@call to terminate
	
@R0 will be the return code		
