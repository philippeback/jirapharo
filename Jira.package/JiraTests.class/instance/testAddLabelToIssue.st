testing-agile
testAddLabelToIssue

	| res |
	

	res := jira addLabel: 'SOMELABEL' toIssue: 'PG-1099'.

	res explore.