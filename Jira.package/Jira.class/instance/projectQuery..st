queries-building
projectQuery: aProjectKey
	^ (JiraResource  project)
			jql: 'project=',aProjectKey;
			yourself 