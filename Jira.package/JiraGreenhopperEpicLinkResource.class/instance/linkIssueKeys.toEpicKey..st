resource-methods
linkIssueKeys: anIssueKeysArray toEpicKey: anEpicKey
"https://jira.atlassian.com/plugins/servlet/restbrowser#/resource/greenhopper-1-0-epics-epickey-add"
	| payload |
	self resource: self resourceBase, ('/epics/{1}/add' format: {anEpicKey}).
	self bePut.
	
	payload := JsonObject new.
	
	payload at: #ignoreEpics put: true.
	payload at: #issueKeys put: anIssueKeysArray.
	
	self beUsingJsonObject: payload
