instance creation
forInstruction: instruction
	| inst |
	inst := self new.
	inst instruction: instruction.
	inst
		informModRM;
		informDisplacement;
		informImmediate.
	^ inst