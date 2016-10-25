private-rendering
optionsQueryString
	| converted |
	converted := OrderedCollection new.

	self options associationsDo: [:association |
		(#(method resource resourceId) includes: association key) ifFalse: [ 
			converted add: ('{1}={2}' format: { association key. association value })
			]
	].
	^$& join: converted
