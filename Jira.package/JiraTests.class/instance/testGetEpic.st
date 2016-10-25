testing-agile
testGetEpic
	| res |
	res := jira getEpic: 'PG-6'.
	res explore.
