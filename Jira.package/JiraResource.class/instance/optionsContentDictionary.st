private-rendering
optionsContentDictionary
	| converted |
	converted := Dictionary new.

	self options associationsDo: [:association |
		(#(method resource resourceId) includes: association key) ifFalse: [ 
			converted add: association
			]
	].
	
	^converted

