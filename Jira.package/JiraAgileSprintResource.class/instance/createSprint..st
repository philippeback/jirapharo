as yet unclassified
createSprint: aSprintJsonObject

	self resource: self resourceBase, '/sprint'.
	self bePost.
	self beUsingJsonObject: aSprintJsonObject