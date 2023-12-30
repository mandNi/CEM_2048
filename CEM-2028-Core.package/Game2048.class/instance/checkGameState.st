testing
checkGameState

	self hasTileWithValue2048 ifTrue:[ 
		self isGameFinished: true.
		self hasWon: true.
	].

	^ self hasTileWithValue2048.