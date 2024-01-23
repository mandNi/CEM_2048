tests
testMoveDownTowardsAWall

	1 to: (self gameInstance linesCount) do: [ :row | gameInstance addTileOfValue: 2 atLineColumn: row @ self gameInstance linesCount ].
	
	gameInstance moveDown.
	
	1 to: (self gameInstance linesCount) do: [ :row | self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: row @ self gameInstance linesCount )].
	