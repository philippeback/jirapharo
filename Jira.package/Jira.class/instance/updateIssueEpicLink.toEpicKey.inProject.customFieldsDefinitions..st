highlevel-agile-crud
updateIssueEpicLink: anIssueIdOrKey toEpicKey: anEpicIdOrKey inProject: aProjectId customFieldsDefinitions: customFields


	|  payload fields  issueResource res   epicLinkCustomField |
	
	self flag: #TODO.
	
	epicLinkCustomField := customFields keyAtValue: 'Epic Link'.
	
	payload := JsonObject new.
	
	fields := JsonObject new.
	fields at: epicLinkCustomField put: anEpicIdOrKey.
	
	payload at: #fields put: fields.
	
	issueResource := JiraApiIssueResource new.
	issueResource updateIssue: anIssueIdOrKey with: payload.
	
	res := self execute: issueResource.
	^res