accessing
defaultJiraUrl
	"https://<client>.jira.com/rest/api/latest"
	^ self environmentVariableNamed: #JIRA_URL
	
	