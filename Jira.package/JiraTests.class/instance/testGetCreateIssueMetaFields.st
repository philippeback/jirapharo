testing
testGetCreateIssueMetaFields
	| r res boardSelf boardId s x issueTypesMeta epicTypeMeta epicTypeMetaFields epicNameCustomField |
	res := jira getIssueCreateMetaForProjectKeys:(self defaultProjectKey).
	issueTypesMeta := (res at: #projects) first ifNotNil: [ :p | p at: #issuetypes ].
	epicTypeMeta := issueTypesMeta select: [ :itm | (itm at: #name) = 'Epic' ].
	epicTypeMetaFields := epicTypeMeta first at: #fields.
	epicTypeMetaFields explore.
	epicCustomFields := (epicTypeMetaFields select: [ :field | (field at: #key) beginsWith: 'customfield_' ] thenCollect: [ :field | (field value at: #name) ]) asDictionary.
	epicCustomFields explore.
	epicNameCustomField := epicCustomFields keyAtValue: 'Epic Name'.
	epicNameCustomField explore.

	"boardSelf := (res at: #values) first at: #self.
boardId := (res at: #values) first at: #id."