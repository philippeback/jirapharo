testing-api
testDeleteIssue

	| resource res |
	resource := JiraApiIssueResource new.
	resource deleteIssue: 'PG-2'.
	res := jira execute: resource.
	res explore.
	
	
