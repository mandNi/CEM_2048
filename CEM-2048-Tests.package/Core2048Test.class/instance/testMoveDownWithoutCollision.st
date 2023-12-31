tests
testMoveDownWithoutCollision

	gameInstance addTileOfValue: 2 atLineColumn: 1@2.
	self assert: ((gameInstance occupiedTiles collect: [:tile | tile position]) includes: 1@2).
	gameInstance moveDown.
	"In game, any move should be followed by the addition of a tile of value 2 or 4, unless the grid is full, so we should have 2 occupiedTiles after this moveDown"
	self assert: gameInstance occupiedTilesSize equals: 2.
	self assert: gameInstance emptyTilesSize equals: self gameInstance gridSize - self gameInstance occupiedTilesSize.
	"checking that the pos 1@4 has been updated in both occupied and empty tiles collections"
	self assert: ((gameInstance occupiedTiles collect: [:tile | tile position]) includes: self gameInstance bottomLeftCorner).
	self deny: ((gameInstance emptyTiles collect: [:tile | tile position]) includes: self gameInstance bottomLeftCorner).


	
	
	