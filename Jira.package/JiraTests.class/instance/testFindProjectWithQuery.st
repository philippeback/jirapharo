testing-api
testFindProjectWithQuery
	|   q |
	jira := Jira new.
	
	q := jira projectQuery: (self defaultProjectKey).
	(jira execute: q) inspect
	