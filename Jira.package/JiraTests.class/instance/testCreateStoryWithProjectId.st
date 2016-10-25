testing-agile
testCreateStoryWithProjectId
	| res aStoryNameString |

	(aStoryNameString :=(self randomWords: 1 + 3 atRandom)).
	
	res := jira	
		createStoryNamed: aStoryNameString
		inProjectWithId: (self defaultProjectId  )
		withSummary: aStoryNameString 
