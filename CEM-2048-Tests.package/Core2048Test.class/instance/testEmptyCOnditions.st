tests
testEmptyCOnditions
	self deny: gameInstance isGridFull.
	self assert: gameInstance occupiedTilesSize equals: 0.
	self assert: gameInstance emptyTilesSize equals: 16.
	