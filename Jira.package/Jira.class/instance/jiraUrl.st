accessing
jiraUrl
	^ jiraUrl ifNil: [ self defaultJiraUrl ]
	