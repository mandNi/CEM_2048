tests
testMoveLeftWithCollisionWithoutMerge

	gameInstance addTileOfValue: 2 atLineColumn: 4 @ 1.
	gameInstance addTileOfValue: 4 atLineColumn: 3 @ 1.

	gameInstance moveLeft.

	self assert: gameInstance occupiedTilesSize equals: 3.
	self assert: gameInstance emptyTilesSize equals: self gameInstance gridSize - self gameInstance occupiedTilesSize.

	self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: self gameInstance topLeftCorner ).
	self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: ( ((self gameInstance topLeftCorner x) + 1) @ 1) ).
	
	self assert: (gameInstance occupiedTiles detect: [ :tile | tile position = (self gameInstance topLeftCorner) ]) withValue equals: 4.
	self assert: (gameInstance occupiedTiles detect: [ :tile | tile position = ( ((self gameInstance topLeftCorner x) + 1) @ 1) ]) withValue equals: 2.