testing
testGetFields

	| r res |
	r := JiraApiFieldResource new.

	res := jira execute: r getFields.
	res explore.

