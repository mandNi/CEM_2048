operations
mergeDownWith: aTile
	super mergeDownWith: aTile.
	(aTile withValue equals: self withValue) ifFalse: [ ^ self ].
	self withValue: self withValue * 2.
	
	aTile notifyGame.