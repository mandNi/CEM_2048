tests
testMoveUpTowardsAWall

	1 to: (self gameInstance linesCount) do: [ :row | gameInstance addTileOfValue: 2 atLineColumn: row @ 1 ].
	
	gameInstance moveUp.
	
	1 to: ((self gameInstance linesCount)) do: [ :row | self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: row @ 1 )].
	