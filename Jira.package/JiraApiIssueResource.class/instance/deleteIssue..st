resource-methods
deleteIssue: anIssueIdOrKey
	"Note that you need to have the privilege given in Jira for this to work."
	self resource: self resourceBase, ('/issue/{1}' format: { anIssueIdOrKey }).
	self beDelete.

