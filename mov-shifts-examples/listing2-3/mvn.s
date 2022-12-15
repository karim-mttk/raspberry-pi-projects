@example of the ADD/ADC instructions
@task:multiply 2 by -1 using MVN then adding 1

.global _start
_start: MVN  R0, #2    @using mvn to calculate 1s complement
		ADD  R0, #1	   @using add to calculate 2s complement

		mov  R7, #1    @service command code 1 
		svc  0
		

