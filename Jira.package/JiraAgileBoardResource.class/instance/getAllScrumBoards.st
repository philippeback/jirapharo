resource-methods
getAllScrumBoards
	self resource: self resourceBase, '/board'.
	self optionAt: #type put: #scrum.
	self beGet