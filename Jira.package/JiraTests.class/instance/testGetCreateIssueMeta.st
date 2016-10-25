testing-api
testGetCreateIssueMeta
	| res |
	"res := jira getIssueCreateMetaForProjectKeys:(self defaultProjectKey)."
	res := jira getIssueCreateMetaForProjectKeys: 'PGBK'.
	res explore.
