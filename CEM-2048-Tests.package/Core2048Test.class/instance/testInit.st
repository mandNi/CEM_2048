tests
testInit
	self deny: gameInstance isGameFinished.
	self deny: gameInstance isGridFull.
	self assert: gameInstance linesCount equals: 4.
	self assert: gameInstance columnsCount equals: 4.
	self assert: gameInstance occupiedTilesSize equals: 0.
	self assert: gameInstance emptyTilesSize equals: 16.
	