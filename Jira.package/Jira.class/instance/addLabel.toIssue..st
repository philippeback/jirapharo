highlevel-agile-crud
addLabel: aLabelString toIssue: anIssueIdOrKey


	|  update  payload fields  issueResource res   labelActions wrapperArray |
	
	payload := JsonObject new.
	update := JsonObject new.
	
	payload at: #update put: update.
	
	
	labelActions := JsonObject new.
	"Labels cannot have spaces in them"
	labelActions at: #add put: (aLabelString replaceAll: Character space with: $-).
	
	"We need to wrap this in an array"
	
	wrapperArray := Array new: 1.
	wrapperArray at: 1 put: labelActions.
	
 	update at: #labels put: wrapperArray.
	
	issueResource := JiraApiIssueResource new.
	issueResource updateIssue: anIssueIdOrKey with: payload.
	
	res := self execute: issueResource.
	^res