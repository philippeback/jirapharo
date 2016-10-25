resource-methods
updateIssue: anIssueIdOrKey  with: anIssueJsonObject

	self resource: self resourceBase, ('/issue/{1}' format: { anIssueIdOrKey }).
	self bePut.
	self beUsingJsonObject: anIssueJsonObject
