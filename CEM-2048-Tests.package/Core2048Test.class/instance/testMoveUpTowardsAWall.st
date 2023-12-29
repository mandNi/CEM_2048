tests
testMoveUpTowardsAWall

	1 to: 4 do: [ :row | gameInstance addTileOfValue: 2 atLineColumn: row @ 1 ].
	
	gameInstance moveUp.
	
	1 to: 4 do: [ :row | self assert: ((gameInstance occupiedTiles collect: [ :tile | tile position ]) includes: row @ 1 )].
	