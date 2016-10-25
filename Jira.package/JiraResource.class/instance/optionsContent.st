private-rendering
optionsContent
	self isGet ifTrue: [ 	^self optionsQueryString ].
	self isPost ifTrue: [ ^self optionsContentDictionary ].
	Error signal: 'unsupported method'
