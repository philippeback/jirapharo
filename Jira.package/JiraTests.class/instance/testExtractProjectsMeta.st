testing
testExtractProjectsMeta

	| res |
	res := jira getIssueCreateMetaForProjectKeys: (self defaultProjectKey).
	
	jira extractProjectsMeta: res
"boardSelf := (res at: #values) first at: #self.
boardId := (res at: #values) first at: #id."


		
	