testing
testSearchProject
	| jira query |
	jira := Jira new.
	
	query := (JiraResource search)
		jql: 'project=ADQ';
		fields: ($, join: #(id key summary));
		optionAt: #expand put: 'names,operations';
		yourself.
		
		
	(jira execute: query) inspect
		
	