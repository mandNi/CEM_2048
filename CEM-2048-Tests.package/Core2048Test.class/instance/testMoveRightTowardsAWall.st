tests
testMoveRightTowardsAWall

	1 to: 4 do: [ :col | gameInstance addTileOfValue: 2 atLineColumn: 4 @ col ].
	
	gameInstance moveRight.
	
	1 to: 4 do: [ :col | self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: 4 @ col )].
	