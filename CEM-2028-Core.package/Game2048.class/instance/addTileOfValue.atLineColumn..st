adding
addTileOfValue: anInteger atLineColumn: aPoint 
	
	| tile |
	tile := (Game2048Tile new position: aPoint ; withValue: anInteger).
	tile gameInstance: self.
	
	occupiedTiles add: tile.
	emptyTiles remove: (emptyTiles detect: [:emptyTile | emptyTile position = aPoint]).