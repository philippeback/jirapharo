private
restClient
	| client |
	client := ZnClient new.
	client
		logLevel: 2; "All of it"
		logToTranscript;
		accept: ZnMimeType applicationJson;
		username: self username password: self password.
	^ client