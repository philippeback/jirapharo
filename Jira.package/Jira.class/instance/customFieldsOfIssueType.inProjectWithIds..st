high-level-api
customFieldsOfIssueType: anIssueTypeString inProjectWithIds: aProjectIdsString
	| jiraApiIssueCreateMetaResource |
	jiraApiIssueCreateMetaResource := JiraApiIssueCreateMetaResource new.
	jiraApiIssueCreateMetaResource expandFields.
	jiraApiIssueCreateMetaResource projectIds: aProjectIdsString.
	^ self
		privateCustomFieldsOfIssueType: anIssueTypeString
		forJiraApiIssueCreateMetaResource: jiraApiIssueCreateMetaResource