high-level-api
customFieldsOfIssueType: anIssueTypeString inProjectWithKeys: aProjectKeysString
	| jiraApiIssueCreateMetaResource |
	jiraApiIssueCreateMetaResource := JiraApiIssueCreateMetaResource new.
	jiraApiIssueCreateMetaResource expandFields.
	jiraApiIssueCreateMetaResource projectKeys: aProjectKeysString.
	^ self
		privateCustomFieldsOfIssueType: anIssueTypeString
		forJiraApiIssueCreateMetaResource: jiraApiIssueCreateMetaResource