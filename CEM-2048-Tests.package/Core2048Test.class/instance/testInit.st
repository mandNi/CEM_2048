tests
testInit
	self deny: GameInstance isGameFinished.
	self deny: GameInstance isGridFull.
	self assert: GameInstance linesCount equals: 4.
	self assert: GameInstance columnsCount equals: 4.
	self assert: GameInstance occupiedTilesSize equals: 0.
	self assert: GameInstance emptyTilesSize equals: 16.
	