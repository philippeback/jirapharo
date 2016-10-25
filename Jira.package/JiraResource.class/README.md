Provides support for forming queries to be used by a Jira.

Has helper constructors on the class side to get started with given type of query.

qi := JiraQuery issue.
qs  := JiraQuery search.

One can move from there to add specifics to the query.

e.g. 

	qi resourceId: 'ABC-01'.

	qs jql: 'project=PRJ';
	
#fields:, #startAt: and #maxResults: can be specified.

Other custom Jira options can be put using 

#optionAt: #someOption put: someValueOrArrayOrDictionary

If there are too many parameters to pass, or one too long for a GET request, one can switch to a POST request by sending #bePost to the query.

Objects that are passed to options will be converted to Json through a NeoJsonWriter.

There are facilities to get JiraQuery instances directly from a Jira instance.

	q := aJira issueQuery.
	
There are even more direct helpers for common cases:

	q := aJira issueQuery: 'ABC-123'.
	aJira execute: q
	
	
