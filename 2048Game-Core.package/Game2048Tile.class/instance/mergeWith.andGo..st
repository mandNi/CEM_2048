as yet unclassified
mergeWith: aTile andGo: aDirection
	(aTile withValue == self withValue) ifFalse: [ ^ self ].
	self withValue: self withValue * 2.
	aTile notifyGame.