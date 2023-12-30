tests
testMoveDownWithCollisionWithoutMerge

	gameInstance addTileOfValue: 2 atLineColumn: 1 @ 2.
	gameInstance addTileOfValue: 4 atLineColumn: 1 @ 3.

	gameInstance moveDown.

	self assert: gameInstance occupiedTilesSize equals: 3.
	self assert: gameInstance emptyTilesSize equals: self gameInstance gridSize - self gameInstance occupiedTilesSize.

	self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: 1 @ 3 ).
	
	self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: 1 @ 4).
			
	self assert: (gameInstance occupiedTiles detect: [ :tile | tile position = (1 @ 4) ]) withValue equals: 4.
	self assert: (gameInstance occupiedTiles detect: [ :tile | tile position = (1 @ 3) ]) withValue equals: 2.