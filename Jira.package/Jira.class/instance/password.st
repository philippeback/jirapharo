accessing
password
	^ password
		ifNil: [ self environmentVariableNamed: #JIRA_PASSWORD ]
		ifNotNil: [ :p | p ]
