testing
testSearchWithJqlAndReturnFields
	
	(jira search: ('project=',(self defaultProjectKey )) returnFields: #(id key summary)) inspect
		
	