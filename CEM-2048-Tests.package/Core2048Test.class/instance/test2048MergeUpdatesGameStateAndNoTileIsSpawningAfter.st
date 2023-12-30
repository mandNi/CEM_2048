tests
test2048MergeUpdatesGameStateAndNoTileIsSpawningAfter

	gameInstance addTileOfValue: 1024 atLineColumn: 1 @ 1.
	gameInstance addTileOfValue: 1024 atLineColumn: 2 @ 1.
	
	self assert: gameInstance occupiedTilesSize equals: 2.
	self deny: gameInstance hasWon.
	self deny: gameInstance isGameFinished.
	
	gameInstance moveLeft.
	 
	self assert: (gameInstance occupiedTiles detect: [ :tile | tile position = (1 @ 1) ]) withValue equals: 2048.
	self assert: gameInstance occupiedTilesSize equals: 1. "Aucun bloc n'est rajouté sur la grille vu que la partie est finie"
	self assert: gameInstance emptyTilesSize equals: ( (self gameInstance gridSize ) - (self gameInstance occupiedTilesSize) ).
	self assert: gameInstance hasWon.
	self assert: gameInstance isGameFinished.