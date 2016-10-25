accessing
username
	^ username 
		ifNil: [ self environmentVariableNamed: #JIRA_USER ]
		ifNotNil: [ :u | u ]