highlevel-agile-crud
createSprint: aSprintNameString onBoardWithId: aBoardId

	| payload sprintResource res |
	payload := JsonObject new.
	
	sprintResource := JiraAgileSprintResource new.
	payload at: #name put: aSprintNameString.
	payload at: #originBoardId put: aBoardId asInteger.
	sprintResource createSprint: payload.
	res := self execute: sprintResource.
	^ res

