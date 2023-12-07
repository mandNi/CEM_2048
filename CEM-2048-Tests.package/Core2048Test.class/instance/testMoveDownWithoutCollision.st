tests
testMoveDownWithoutCollision
	"TODO : create 1 tile (not at the bottom line), call moveDown and test that the tile moved to the bottom line and that another tile appeared at whatever position"
	gameInstance addTileOfValue: 2 atLineColumn: 1@2.
	gameInstance moveDown.
	"In game, any move should be followed by the addition of a tile of value 2 or 4, unless the grid is full, so we should have 2 occupiedTiles after this moveDown"
	self assert: gameInstance occupiedTilesSize equals: 2.
	self assert: gameInstance emptyTilesSize equals: 14.
	self assert: ((gameInstance occupiedTiles collect: #lineColumn) includes: 1@4).
	
	
	