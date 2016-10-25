testing
testFindIssue
	| jira  |
	jira := Jira new.
	
	(jira issue: 'ADQ-1') inspect.
		
	