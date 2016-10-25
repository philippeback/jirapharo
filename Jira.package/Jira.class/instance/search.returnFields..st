action-resources
search: aJqlString returnFields: anArrayOfFieldNames 
	^self execute: (self searchQuery: aJqlString returnFields: ($, join: anArrayOfFieldNames))
