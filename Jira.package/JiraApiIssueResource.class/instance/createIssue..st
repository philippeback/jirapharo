resource-methods
createIssue: anIssueJsonObject
	self resource: self resourceBase, '/issue'.
	self bePost.
	self beUsingJsonObject: anIssueJsonObject
