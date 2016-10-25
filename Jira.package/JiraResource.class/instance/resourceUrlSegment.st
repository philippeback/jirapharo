private-rendering
resourceUrlSegment
	^ '/',(self options at: #resource) asString, ((self optionAt: #resourceid) ifNil: [''] ifNotNil: [ :id | '/', id ])