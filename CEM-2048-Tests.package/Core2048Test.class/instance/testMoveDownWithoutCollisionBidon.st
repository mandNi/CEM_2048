tests
testMoveDownWithoutCollisionBidon
	"TODO : create 1 tile (not at the bottom line), call moveDown and test that the tile moved to the bottom line and that another tile appeared at whatever position"
	gameInstance addTileOfValue: 2 atLineColumn: 1@2.
	self assert: gameInstance occupiedTilesSize equals: 1.
	self assert: gameInstance emptyTilesSize equals: 15.

	
	
	