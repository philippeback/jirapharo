testing-api
testIdOfIssueType
	jira idOfIssueType: 'Epic' inProjectWithKeys: (self defaultProjectKey ).
	jira idOfIssueType: 'Task' inProjectWithKeys: (self defaultProjectKey ).
	jira idOfIssueType: 'Story' inProjectWithKeys: (self defaultProjectKey ).
	jira idOfIssueType: 'Bug' inProjectWithKeys: (self defaultProjectKey )