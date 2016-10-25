testing
testGetCreateIssueMetaWithProjectKeys

	| res |
	res := jira getIssueCreateMetaForProjectKeys:(self defaultProjectKey ).
	
	res explore.
"boardSelf := (res at: #values) first at: #self.
boardId := (res at: #values) first at: #id."


		
	