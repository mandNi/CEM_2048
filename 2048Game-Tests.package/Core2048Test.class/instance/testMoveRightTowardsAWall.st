tests
testMoveRightTowardsAWall

	1 to: (self gameInstance linesCount) do: [ :col | gameInstance addTileOfValue: 2 atLineColumn: (self gameInstance linesCount) @ col ].
	
	gameInstance moveRight.
	
	1 to: (self gameInstance linesCount) do: [ :col | self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: (self gameInstance linesCount) @ col )].
	