rendering
asUri
	self isGet ifTrue: [ ^ self resourceUrlSegment, '?', self optionsQueryString ].
		
	self isPost 	ifTrue: [ ^ self resourceUrlSegment ].
		
	self isDelete 	ifTrue: [ ^ self resourceUrlSegment ].
		
	self isPut 	ifTrue: [ ^ self resourceUrlSegment ].

		
	Error signal: 'query must be get or post or delete - well, maybe we need more but...'
	
