high-level-api
idOfIssueType: anIssueTypeString inProjectWithKeys: aProjectKeysString

	| r res projectCreateMeta issueTypeMeta |
	r := JiraApiIssueCreateMetaResource new.
	r projectKeys: aProjectKeysString.

	res := self execute: r getCreateIssueMeta.

	projectCreateMeta := (res at: #projects) first.

	issueTypeMeta := ((projectCreateMeta at: #issuetypes) select: [ :issuetype | (issuetype at: #name) = anIssueTypeString ]) first.

	^ issueTypeMeta at: #id