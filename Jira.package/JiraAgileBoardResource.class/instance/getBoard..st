resource-methods
getBoard: aBoardIdString
	self resource: self resourceBase, ('/board/{1}' format: {aBoardIdString}).
	self beGet