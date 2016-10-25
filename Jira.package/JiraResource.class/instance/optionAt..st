accessing
optionAt: aSymbol
	^self options at: aSymbol ifAbsent: [ nil ]