tests
testMoveRightWithoutCollision
	"TODO : create 1 tile (not in the last column on the right), call moveRight and test that the tile moved to the right column and that another tile appeared at whatever position"
	gameInstance addTileOfValue: 2 atLineColumn: 3@2.
	gameInstance moveRight.
	"In game, any move should be followed by the addition of a tile of value 2 or 4, unless the grid is full, so we should have 2 occupiedTiles after this moveRight"
	self assert: gameInstance occupiedTilesSize equals: 2.
	self assert: gameInstance emptyTilesSize equals: 14.
	self assert: ((gameInstance occupiedTiles collect: #lineColumn) includes: 4@2).