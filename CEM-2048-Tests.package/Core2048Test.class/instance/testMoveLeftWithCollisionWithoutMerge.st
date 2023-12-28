tests
testMoveLeftWithCollisionWithoutMerge

	gameInstance addTileOfValue: 2 atLineColumn: 4 @ 1.
	gameInstance addTileOfValue: 4 atLineColumn: 3 @ 1.

	gameInstance moveLeft.

	self assert: gameInstance occupiedTilesSize equals: 3.
	self assert: gameInstance emptyTilesSize equals: 13.

	self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: 1 @ 1 ).
	self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: 2 @ 1).
	
	self assert: (gameInstance occupiedTiles detect: [ :tile | tile position = (1 @ 1) ]) withValue equals: 4.
	self assert: (gameInstance occupiedTiles detect: [ :tile | tile position = (2 @ 1) ]) withValue equals: 2.