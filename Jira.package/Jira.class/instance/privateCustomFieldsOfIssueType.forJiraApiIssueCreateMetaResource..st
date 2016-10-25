high-level-api
privateCustomFieldsOfIssueType: anIssueTypeString forJiraApiIssueCreateMetaResource: jiraApiIssueCreateMetaResource
	| issueTypeMeta issueTypesMeta issueTypeCustomFields res issueTypeMetaFields |
	res := self
		execute: jiraApiIssueCreateMetaResource getCreateIssueMeta.
	issueTypesMeta := (res at: #projects) first
		ifNotNil: [ :p | p at: #issuetypes ].
	issueTypeMeta := issueTypesMeta
		select: [ :itm | (itm at: #name) = anIssueTypeString ].
	issueTypeMetaFields := issueTypeMeta first at: #fields.
	issueTypeCustomFields := (issueTypeMetaFields
		select: [ :field | (field at: #key) beginsWith: 'customfield_' ]
		thenCollect: [ :field | field value at: #name ]) asDictionary.
	^ issueTypeCustomFields