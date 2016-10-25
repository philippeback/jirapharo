testing
testProjectQuery
	query := JiraResource project.
	query
		jql: 'project=ADQ'.
		
	self assert: query resourceUrlSegment equals: '/project'.
	self assert: (query optionsContent isKindOf: String).
		
		
	query inspect
		