queries-building
searchQuery: aJqlString returnFields: anArrayOfFieldNames
	^ (JiraResource  search)
			jql: aJqlString;
			yourself 