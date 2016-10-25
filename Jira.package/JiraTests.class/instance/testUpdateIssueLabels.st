testing-agile
testUpdateIssueLabels


	| res |
	

	res := jira updateIssueLabels: 'PG-1099' to: #('GEX;Sample' 'AnotherLabel').
	res explore.