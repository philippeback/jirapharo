highlevel-agile-crud
createEpicNamed: anEpicNameString inProjectWithId: aProjectId withSummary: aSummaryString


	| customFields payload fields epicNameCustomField issueResource res |
	
	customFields := self customFieldsOfIssueType: 'Epic' inProjectWithIds: aProjectId asString.
	
	payload := JsonObject new.
	
	fields := JsonObject new.
	
	fields at: #summary put: aSummaryString.
	fields at: #issuetype put: ((JsonObject new) at: #name put: 'Epic'; yourself).
	fields at: #project put: ((JsonObject new) at: #id put: aProjectId asString; yourself).
		
	epicNameCustomField := customFields keyAtValue: 'Epic Name'.
	fields at: epicNameCustomField put: anEpicNameString.
	
	payload at: #fields put: fields.
	
	issueResource := JiraApiIssueResource new.
	issueResource createIssue: payload.
	
	res := self execute: issueResource.
	^res