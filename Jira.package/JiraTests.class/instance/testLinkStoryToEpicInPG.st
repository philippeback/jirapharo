testing-agile
testLinkStoryToEpicInPG
	| res    |


	res := jira	
		updateIssueEpicLink: 'PG-13' toEpicKey: 'PG-8' inProject: (self defaultProjectId).
		
