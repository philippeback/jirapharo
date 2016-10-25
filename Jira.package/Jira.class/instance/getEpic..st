highlevel-agile-crud
getEpic: anEpicIdOrKey

	| epicResource res |
	epicResource := JiraAgileEpicResource new.
	
	epicResource getEpic: anEpicIdOrKey .
	
	res := self execute: epicResource.
	^res