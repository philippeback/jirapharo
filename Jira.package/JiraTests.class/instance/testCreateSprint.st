testing-agile
testCreateSprint
	| res sprintId |
	res := jira
		createSprint: self randomSprintName
		onBoardWithId: self defaultBoardId.
	sprintId := res at: #id