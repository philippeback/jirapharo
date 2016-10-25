logging
logRequestResponseFor: aZnClient

	Transcript
		cr;
		<< 'Request';
		cr.
	aZnClient request writeToTranscript.
	Transcript
		cr;
		<< 'Response';
		cr.

	"aZnClient response writeToTranscript." 
	self flag: #TODO. "There is a bug in here."