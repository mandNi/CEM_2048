actions
moveUp
	|sortedTiles nextRandomTile|.
	sortedTiles := occupiedTiles asSortedCollection: [:a :b | a position y < b position y].
	
	sortedTiles do:[:tile | tile moveUp].
	
	 nextRandomTile := Game2048Tile new.
	 nextRandomTile withValue: (Random new next < 0.9 ifTrue: [2] ifFalse: [4]).
	 nextRandomTile position: emptyTiles atRandom position.
	 self addTileOfValue: nextRandomTile withValue atLineColumn: nextRandomTile position.