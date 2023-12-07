operations
mergeWith: aTile
	super mergeWith: aTile.
	(aTile withValue equals: self withValue) ifFalse: [ ^ self ].
	self withValue: self withValue * 2.
	
	aTile notifyGame.