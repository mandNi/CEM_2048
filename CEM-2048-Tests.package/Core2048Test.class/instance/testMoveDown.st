tests
testMoveDown
	"TODO : create 1 tile (not at the bottom line), call moveDown and test that the tile moved to the bottom line and that another tile appeared at whatever position"
	| arrayOfOccupiedTilesPositions |
	GameInstance addTileOfValue: 2 atLineColumn: 1@2.
	GameInstance moveDown.
	"In game, any move should be followed by the addition of a tile of value 2 or 4, unless the grid 	is full, so we should have 2 occupiedTiles after this moveDown"
	self assert: GameInstance occupiedTilesSize equals: 2.
	self assert: GameInstance emptyTilesSize equals: 14.
	arrayOfOccupiedTilesPositions := (GameInstance occupiedTiles collect: #lineColumn).
	self assert: (arrayOfOccupiedTilesPositions includes: 4@2).
	
	
	