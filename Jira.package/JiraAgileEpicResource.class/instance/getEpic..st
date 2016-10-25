as yet unclassified
getEpic: anEpicIdOrKey

	self resource: self resourceBase, ('/epic/{1}' format: { anEpicIdOrKey }).
	self beGet.

