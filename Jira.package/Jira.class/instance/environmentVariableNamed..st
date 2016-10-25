private
environmentVariableNamed: aSymbol

	^ OSProcess thisOSProcess environment at: aSymbol
	
	