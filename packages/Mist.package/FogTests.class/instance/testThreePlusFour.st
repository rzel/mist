tests
testThreePlusFour
	"FogTests new threePlusFour"

	| program process |
	program :=  Fog
		program:
			{Fog
				sysCall: #exit_group
				args:
					{Fog intAdd: (Fog intConstant: 3) 
						to: (Fog intConstant: 4)}}.
	process := self compileAndRun: program.