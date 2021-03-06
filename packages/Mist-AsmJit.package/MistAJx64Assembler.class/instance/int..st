instructions generated
int: n
	"The INT n instruction generates a call to the interrupt or exception handler specified with the destination operand
(see the section titled “Interrupts and Exceptions” in Chapter 6 of the Intel® 64 and IA-32 Architectures Software Developer's Manual, Volume 1). 
 "

	"At this time, only int 3 is supported, which generates a single-byte breakpoint instruction."

	n = 3
		ifFalse: [ self error: 'Only int 3 currently supported' ].
	^ self addInstruction: #int3 operands: {}