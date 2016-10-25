queries-building
issueQuery: anIssueId
	^ (JiraResource  issue)
			resourceId: anIssueId;
			yourself