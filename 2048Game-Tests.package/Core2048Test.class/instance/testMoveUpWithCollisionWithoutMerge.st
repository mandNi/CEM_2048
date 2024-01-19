tests
testMoveUpWithCollisionWithoutMerge

	gameInstance addTileOfValue: 2 atLineColumn: 1 @ 2.
	gameInstance addTileOfValue: 4 atLineColumn: 1 @ 3.

	gameInstance moveUp.

	self assert: gameInstance occupiedTilesSize equals: 3.
	self assert: gameInstance emptyTilesSize equals: self gameInstance gridSize - self gameInstance occupiedTilesSize.

	self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: self gameInstance topLeftCorner).
	self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: (1 @ ((self gameInstance topLeftCorner y) + 1)) ) .
			
	self assert: (gameInstance occupiedTiles detect: [ :tile | tile position = (self gameInstance topLeftCorner) ]) withValue equals: 2.
	self assert: (gameInstance occupiedTiles detect: [ :tile | tile position = (1 @ ( (self gameInstance topLeftCorner y) + 1 ) ) ]) withValue equals: 4.