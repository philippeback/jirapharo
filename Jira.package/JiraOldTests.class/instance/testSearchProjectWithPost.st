testing
testSearchProjectWithPost
	| jira query |
	jira := Jira new.
	
	query := (JiraResource new)
		beSearch;
		bePost;
		jql: 'project=ADQ';
		fields: #(id key summary);
		optionAt: #expand put: #(names operations);
		yourself.
		
		
	(jira execute: query) inspect
		
	