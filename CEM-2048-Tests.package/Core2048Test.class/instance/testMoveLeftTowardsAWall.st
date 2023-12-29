tests
testMoveLeftTowardsAWall

	1 to: 4 do: [ :col | gameInstance addTileOfValue: 2 atLineColumn: 1 @ col ].
	
	gameInstance moveLeft.
	
	1 to: 4 do: [ :col | self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: 1 @ col )].
	