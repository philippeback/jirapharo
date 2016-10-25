testing
testFindProjectWithQuery
	| jira  q |
	jira := Jira new.
	
	q := jira projectQuery: 'ADQ'.
	(jira execute: q) inspect
	