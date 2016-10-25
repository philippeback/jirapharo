highlevel-agile-crud
updateIssueLabels: anIssueIdOrKey to: anArrayOfLabels


	|  update  payload fields  issueResource res   labelActions damnArray |
	
	payload := JsonObject new.
	update := JsonObject new.
	
	payload at: #update put: update.
	
	labelActions := anArrayOfLabels collect: [ :each | #add -> each ].
	
	damnArray := Array new: 1.
	damnArray at: 1 put: labelActions.
	
 	update at: #labels put: damnArray.
	
	issueResource := JiraApiIssueResource new.
	issueResource updateIssue: anIssueIdOrKey with: payload.
	
	res := self execute: issueResource.
	^res