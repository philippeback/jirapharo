resource-methods
getIssuesForBacklog: aBoardId

	self resource: self resourceBase, ('/board/{1}/backlog' format: { aBoardId asString }).
	self optionAt: #startAt put: 0.
	self beGet