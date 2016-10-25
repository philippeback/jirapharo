testing
testSearchWithJqlAndReturnFields
	| jira  |
	jira := Jira new.
	
	(jira search: 'project=ADQ' returnFields: #(id key summary)) inspect
		
	