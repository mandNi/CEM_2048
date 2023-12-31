tests
testMoveRightWithCollisionWithMerge

	gameInstance addTileOfValue: 2 atLineColumn: 1 @ 1.
	gameInstance addTileOfValue: 2 atLineColumn: 2 @ 1.

	gameInstance moveRight.

	self assert: gameInstance occupiedTilesSize equals: 2.
	self assert: gameInstance emptyTilesSize equals: self gameInstance gridSize - self gameInstance occupiedTilesSize.

	self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: self gameInstance topRightCorner).
	
	self assert: (gameInstance occupiedTiles detect: [ :tile | tile position = (self gameInstance topRightCorner) ]) withValue equals: 4.