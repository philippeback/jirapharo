Provides support for working against the Jira REST API.




Works with the JiraResource class hierarchy.

Requires environment variables:

JIRA_USER
JIRA_PASSWORD
JIRA_URL

to be set.

At this point, works only with the http(s).
Due to BasicAuth being used, https is more than recommended.

The basic interplay is that one creates a Jira instance that knows about the REST endpoint and credentials (through the environment variables) and creates JiraQuery instances that in turn get executed by the Jira instance.

https://docs.atlassian.com/jira/REST/cloud/
https://docs.atlassian.com/jira-software/REST/cloud/#agile
https://docs.atlassian.com/jira/REST/cloud/#api/2/issue-createIssue

e..g. (all code below is utterly out of date)

   jira := Jira new.

   query := (JiraQuery 	issue)
					resourceId: 'ABC-1',
					yourself 
	
	response := jira execute: query.
	
The response contains a Json response converted into Dictionaries.

On error, one gets an Error signalled.

There are helpers to get things done easier:

	jira := Jira new.
	
	response := jira issue: 'ABC-A'.
	
But that doesn't give any control over how the query is built.

One can get a query directly out of the Jira instance with:

	jira issueQuery.

or

	jira issueQuery: 'ABC-123'.
	
From there, please see the JiraQuery class for how to add specific clauses to the query.


For search with JQL, one can do;

	jira search: 'project=ABC'.
	jira search: 'project=ABC' returnFields #(id key)
	
To get a query back, one can do:

	q := jira searchQuery: 'project=ABC' returnFields: #(id key).
	
	q
		startAt: 5;
		maxResults: 1;
		yourself.
	
	jira execute: q.

For issuing queries that would result in a longer than allowed max querystring length, one can make the query a POST.

	q bePost.

When the jira execute: q will be issued, the POST will be used instead of a GET.

