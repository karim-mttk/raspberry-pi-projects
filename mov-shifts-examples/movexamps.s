@mov examples 
@loading r2 with 0x4f5d6e3a using MOV and MOVT
.global _start
_start: 
		MOV R2, #0x6e3a
		MOV R2, #0x4f5d
		
		MOV R1, R2
		
@all shift versions of MOV
		MOV R1, R2, LSL #1 
		MOV R1, R2, LSR #1
		MOV R1, R2,	ASR #1
		MOV R1, R2, ROR #1
		MOV R1, R2, RRX
		
@copy the same functions above with the assembler mnemonics
		LSL R1, R2, #1
		LSR R1, R2, #1
		ASR R1, R2, #1
		ROR R1, R2, #1
		RRX R1, R2
@8 bit imm and shift
		MOV R1, #0xab000000 @big for imm16
		
@MVN ex
		MVN R1, #45
@MOV that the assembler will change to MVN
		MOV R1, #0xffffffff @(-2)
		
		mov R0, #1 @return 0
		mov R7, #1 @service command code 1
		svc 0  	   @Call Linux to terminate	
		
		
