highlevel-agile-crud
createStoryNamed: anEpicNameString inProjectWithId: aProjectIdString withSummary: aSummaryString customFieldsDefinitions: customFields

	"Passes the customFields definition to speed things up otherwise, we search for fields on every creation, which is overkill"
	
	| payload fields issueResource res |
	payload := JsonObject new.
	
	fields := JsonObject new.
	
	self flag: #TODO. "Custom fields"
	
	fields at: #summary put: aSummaryString.
	fields at: #issuetype put: ((JsonObject new) at: #name put: 'Story'; yourself).
	fields at: #project put: ((JsonObject new) at: #id put: aProjectIdString; yourself).
	
	payload at: #fields put: fields.
	
	issueResource := JiraApiIssueResource new.
	issueResource createIssue: payload.
	
	res := self execute: issueResource.
	^res
	