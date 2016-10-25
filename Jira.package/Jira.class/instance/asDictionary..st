conversion
asDictionary: aJsonString
	^(NeoJSONReader on: aJsonString readStream) next.