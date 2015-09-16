x64-compiling-pass2
emitStackInitializationTo: codeStream
	codeStream
		mov: 16r500000 to: codeStream RSP;
		sub: codeStream RSP with: 16r20	"Initialize the stack pointer. Current default ELF file puts the image at the beginning of a 1MB area at 16r400000, and allocates a total of 1MiB memory (16r100000) ending at 16r4FFFFF. Thus, initializing the stack pointer to 16r500000 puts the stack at the end of our allocated memory. At some point the stack may be its own segment and require different initialization."	"We then subtract 16r20 from the stack pointer, emulating the beginning of a method with four memory temps. When the compiler is compiling methods rather than programs, the method node will need to emit this instruction and figure out how many temps are needed, and also to emit the corresponding add before the return (unless the number of temps is 0)."