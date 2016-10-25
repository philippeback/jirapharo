testing
testSearchProjectWithPost
	| query |

	
	query := (JiraResource new)
		beSearch;
		bePost;
		jql: ('project=',(self defaultProjectKey ));
		fields: #(id key summary);
		optionAt: #expand put: #(names operations);
		yourself.
		
		
	(jira execute: query) inspect
		
	