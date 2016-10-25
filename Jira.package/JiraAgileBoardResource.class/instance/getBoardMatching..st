resource-methods
getBoardMatching: aBoardNamePart

	self resource: self resourceBase, '/board'.
	self optionAt: #name put: aBoardNamePart.
	self beGet