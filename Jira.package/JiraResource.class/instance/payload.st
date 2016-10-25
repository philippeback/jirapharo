payload
payload
	
	^ isUsingJsonObject 
		ifTrue: [ self options at: #jsonobject ]
		ifFalse: [ self optionsContentDictionary ]
	