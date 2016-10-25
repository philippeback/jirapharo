testing
testOptionsContentForGet
	query := JiraResource new.
	
	self assert: (query
		beGet;
		optionAt: #a put: '123';
		optionAt: #b put: 56;
		optionsContent)
		equals: 'a=123&b=56'
		
