high-level-api
idOfIssueType: anIssueTypeString inProjectWithIds: aProjectIdsString

	| r res projectCreateMeta issueTypeMeta |
	r := JiraApiIssueCreateMetaResource new.
	r projectIds: aProjectIdsString.

	res := self execute: r getCreateIssueMeta.

	projectCreateMeta := (res at: #projects) first.

	issueTypeMeta := ((projectCreateMeta at: #issuetypes) select: [ :issuetype | (issuetype at: #name) = anIssueTypeString ]) first.

	^ issueTypeMeta at: #id