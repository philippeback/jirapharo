testing-agile
testCreateEpic
	| res epicName |
	
	epicName := (self randomWords: 1 + 3 atRandom).
	res := jira
		createEpicNamed: epicName
		inProjectWithId: (self defaultProjectId)
		withSummary: epicName.
	
	res explore.