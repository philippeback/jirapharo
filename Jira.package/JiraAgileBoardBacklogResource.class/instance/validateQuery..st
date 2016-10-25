resource-query-parameters
validateQuery: aBoolean
	aBoolean
		ifTrue: [ "self optionAt: #validateQuery put: #true" "No need, this is the default" ]
		ifFalse: [ self optionAt: #validateQuery put: #false ]
	