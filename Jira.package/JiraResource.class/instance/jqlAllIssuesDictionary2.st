jql-queries
jqlAllIssuesDictionary2
	
 ^(Dictionary new)
		at: 'jql' put: 'project=ADQ';
		at: 'startAt' put: 0;
		at: 'maxResults' put: 1;
		at: 'fields' put: #('id','key');
		yourself
		