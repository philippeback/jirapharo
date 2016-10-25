testing
testFindProject
	| jira  |
	jira := Jira new.
	
	(jira project: 'ADQ') inspect.
		
	