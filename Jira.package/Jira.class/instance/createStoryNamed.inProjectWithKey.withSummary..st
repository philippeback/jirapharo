highlevel-agile-crud
createStoryNamed: anEpicNameString inProjectWithKey: aProjectKeyString withSummary: aSummaryString


	
	| payload fields issueResource res |
	payload := JsonObject new.
	
	fields := JsonObject new.
	
	fields at: #summary put: aSummaryString.
	fields at: #issuetype put: ((JsonObject new) at: #name put: 'Story'; yourself).
	fields at: #project put: ((JsonObject new) at: #key put: aProjectKeyString; yourself).
	
	payload at: #fields put: fields.
	
	issueResource := JiraApiIssueResource new.
	issueResource createIssue: payload.
	
	res := self execute: issueResource.
	^res
	