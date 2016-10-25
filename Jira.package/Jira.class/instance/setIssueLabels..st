highlevel-agile-crud
setIssueLabels: anIssueIdOrKey


	| update customFields payload fields  issueResource res   epicLinkCustomField |
	
	payload := JsonObject new.
	
	update := JsonObject new.
	
	fields := JsonObject new.
	fields at: #update put: update..
	
	payload at: #fields put: fields.
	
	issueResource := JiraApiIssueResource new.
	issueResource updateIssue: anIssueIdOrKey with: payload.
	
	res := self execute: issueResource.
	^res