testing
testOptionsContentForPost
	query := JiraResource new.
	
	self assert: (query
		bePost;
		optionAt: #a put: '123';
		optionAt: #b put: 56;
		optionsContent)
		equals: {#a->'123'. #b->56} asDictionary
		
