operations
mergeLeftWith: aTile

	(aTile withValue == self withValue) ifFalse: [ ^ self ].
	self withValue: self withValue * 2.
	aTile notifyGame.