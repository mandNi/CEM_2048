adding
addTileOfValue: anInteger atLineColumn: aPoint 
	
	| tile |
	tile := (Game2048Tile new position: aPoint ; withValue: anInteger).
	grid at: 1 put: tile.
	occupiedTiles add: tile.
	
	"Il faut corriger ça"
	emptyTiles removeElement: (tile position).