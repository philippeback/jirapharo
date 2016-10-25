testing
testSearchProject
	| query |
	query := (JiraResource search)
		jql: ('project=',(self defaultProjectKey ));
		fields: ($, join: #(id key summary));
		optionAt: #expand put: 'names,operations';
		yourself.
		
		
	(jira execute: query) inspect
		
	