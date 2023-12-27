tests
testMoveUpWithCollisionWithMerge

	gameInstance addTileOfValue: 2 atLineColumn: 1 @ 2.
	gameInstance addTileOfValue: 2 atLineColumn: 1 @ 3.
	
	gameInstance moveUp.
	
	self assert: gameInstance occupiedTilesSize equals: 2.
	self assert: gameInstance emptyTilesSize equals: 14.
	
	self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: 1 @ 1).
			
	self assert: (gameInstance occupiedTiles detect: [ :tile | tile position = (1 @ 1) ]) withValue equals: 4.