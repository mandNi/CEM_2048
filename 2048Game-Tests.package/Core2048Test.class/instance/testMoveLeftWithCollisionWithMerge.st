tests
testMoveLeftWithCollisionWithMerge

	gameInstance addTileOfValue: 2 atLineColumn: 4 @ 1.
	gameInstance addTileOfValue: 2 atLineColumn: 2 @ 1.

	gameInstance moveLeft.

	self assert: gameInstance occupiedTilesSize equals: 2.
	self assert: gameInstance emptyTilesSize equals: self gameInstance gridSize - self gameInstance occupiedTilesSize.

	self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: self gameInstance topLeftCorner ).
	
	self assert: (gameInstance occupiedTiles detect: [ :tile | tile position = (self gameInstance topLeftCorner) ]) withValue equals: 4.