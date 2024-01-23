initialize
initWithCustomDimensions: anInteger

	occupiedTiles := OrderedCollection new.
	grid := Array new: anInteger * anInteger.
	self linesCount: anInteger.
	self  columnsCount: anInteger.
	self isGameFinished: false.
	self hasWon: false.
	self initialisingEmptyTiles.
	self initialisingWallTiles.
	^ self 