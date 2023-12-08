actions
moveDown
	|sortedTiles|.
	sortedTiles := occupiedTiles asSortedCollection: [ :a :b | a position y > b position y].
	
	sortedTiles do:[:tile | tile moveDown ] 