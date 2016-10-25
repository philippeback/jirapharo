resource-methods
updateEpicLink: anIssueIdOrKey toEpicKey: anEpicIdOrKey
"https://confluence.atlassian.com/jirakb/update-epic-link-via-rest-api-779158615.html"
	| payload fields |
	self resource: self resourceBase, ('/issue/{1}' format: {anEpicIdOrKey}).
	self bePut.
	
	payload := JsonObject new.
	fields := JsonObject new.
	
	payload at: #fields put: fields.
	
	
	self beUsingJsonObject: payload

