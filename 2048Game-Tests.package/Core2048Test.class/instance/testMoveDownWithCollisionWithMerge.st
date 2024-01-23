tests
testMoveDownWithCollisionWithMerge

	gameInstance addTileOfValue: 2 atLineColumn: 1 @ 2.
	gameInstance addTileOfValue: 2 atLineColumn: 1 @ 3.
	
	gameInstance moveDown.
	
	self assert: gameInstance occupiedTilesSize equals: 2.
	self assert: gameInstance emptyTilesSize equals: ( (self gameInstance gridSize) - gameInstance occupiedTilesSize ).
	
	self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: self gameInstance bottomLeftCorner).
			
	self assert: (gameInstance occupiedTiles detect: [ :tile | tile position = self gameInstance bottomLeftCorner ]) withValue equals: 4.