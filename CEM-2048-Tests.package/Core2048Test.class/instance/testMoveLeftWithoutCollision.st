tests
testMoveLeftWithoutCollision
	"TODO : create 1 tile (not in the last column on the left), call moveLeft and test that the tile moved to the left column and that another tile appeared at whatever position"
	gameInstance addTileOfValue: 2 atLineColumn: 4@1.
	gameInstance moveLeft.
	"In game, any move should be followed by the addition of a tile of value 2 or 4, unless the grid is full, so we should have 2 occupiedTiles after this moveLeft"
	self assert: gameInstance occupiedTilesSize equals: 2.
	self assert: gameInstance emptyTilesSize equals: self gameInstance gridSize - self gameInstance occupiedTilesSize.
	self assert: ((gameInstance occupiedTiles collect: [:tile | tile position]) includes: 1@1).