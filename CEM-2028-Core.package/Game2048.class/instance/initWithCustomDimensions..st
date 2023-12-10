initialize
initWithCustomDimensions: anInteger

	occupiedTiles := OrderedCollection new.
	grid := Array new: anInteger * anInteger.
	self linesCount: anInteger.
	self  columnsCount: anInteger.
	self initialisingEmptyTiles.
	self initialisingWallTiles.
	^ self 