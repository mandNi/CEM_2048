tests
testMoveUpWithCollisionWithoutMerge

	gameInstance addTileOfValue: 2 atLineColumn: 1 @ 2.
	gameInstance addTileOfValue: 4 atLineColumn: 1 @ 3.

	gameInstance moveUp.

	self assert: gameInstance occupiedTilesSize equals: 3.
	self assert: gameInstance emptyTilesSize equals: 13.

	self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: 1 @ 3 ).
	
	self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: 1 @ 4).
			
	self assert: (gameInstance occupiedTiles detect: [ :tile | tile position = (1 @ 1) ]) withValue equals: 2.
	self assert: (gameInstance occupiedTiles detect: [ :tile | tile position = (1 @ 2) ]) withValue equals: 4.