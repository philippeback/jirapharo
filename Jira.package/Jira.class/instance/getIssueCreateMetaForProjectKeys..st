high-level-api
getIssueCreateMetaForProjectKeys: aProjectKeysString

	| r |
	r := JiraApiIssueCreateMetaResource new.
	r expandFields.
	r projectKeys: aProjectKeysString .
	^ self execute: r getCreateIssueMeta.