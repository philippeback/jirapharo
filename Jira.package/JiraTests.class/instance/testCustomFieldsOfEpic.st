testing-agile
testCustomFieldsOfEpic

	(jira customFieldsOfIssueType: 'Epic' inProjectWithKeys: (self defaultProjectKey)) keyAtValue: 'Epic Name'.
	(jira customFieldsOfIssueType: 'Story' inProjectWithKeys: (self defaultProjectKey)) keyAtValue: 'Sprint'.
	(jira customFieldsOfIssueType: 'Task' inProjectWithKeys: (self defaultProjectKey)) keyAtValue: 'Epic Link'.