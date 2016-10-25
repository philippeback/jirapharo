execute
execute: aJiraQuery
	| client response  |
	client := self restClient.
	aJiraQuery isGet ifTrue: [ 
		response := client get: self jiraUrl , aJiraQuery asUri.
		(client response statusLine = ZnStatusLine ok) 
			ifFalse: [ Error signal: 'Cannot retrieve contents ', client response statusLine asString ].
			self logRequestResponseFor: client.
			^ self asDictionary: response.
		].
	aJiraQuery isPost ifTrue: [
		response := client 
				url: self jiraUrl , aJiraQuery asUri;
				contents: aJiraQuery asJson;
				contentType: ZnMimeType applicationJson;
				post. 
		(client response statusLine = ZnStatusLine created) "or updated in the future."
			ifFalse: [ Error signal: 'Cannot retrieve contents ', client response statusLine asString ].
		self logRequestResponseFor: client.
		^ self asDictionary: response.
		].
	aJiraQuery isDelete ifTrue: [
		response := client 
				delete: self jiraUrl , aJiraQuery asUri.
		({ZnStatusLine ok. ZnStatusLine noContent. ZnStatusLine accepted} contains: [:each | each = (client response statusLine)])
			ifFalse: [ Error signal: 'Cannot delete ', client response statusLine asString ].
		self logRequestResponseFor: client.
		^ client response statusLine.
		].
	
	aJiraQuery isPut ifTrue: [
		response := client 
				url: self jiraUrl , aJiraQuery asUri;
				contents: aJiraQuery asJson; "<-- if empty, we do not need to send"
				contentType: ZnMimeType applicationJson;
				put.
		({ZnStatusLine ok. ZnStatusLine noContent. ZnStatusLine accepted} contains: [:each | each = (client response statusLine)])
			ifFalse: [ Error signal: 'Cannot put ', client response statusLine asString ].
		self logRequestResponseFor: client.
		^ client response statusLine.
		].
	
	Error signal: 'Unsupported Method'.

	

	
