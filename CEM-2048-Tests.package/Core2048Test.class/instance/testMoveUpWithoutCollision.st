tests
testMoveUpWithoutCollision

	gameInstance addTileOfValue: 2 atLineColumn: 1@3.
	self assert: ((gameInstance occupiedTiles collect: [:tile | tile position]) includes: 1@3).
	gameInstance moveUp.
	"In game, any move should be followed by the addition of a tile of value 2 or 4, unless the grid is full, so we should have 2 occupiedTiles after this moveDown"
	self assert: gameInstance occupiedTilesSize equals: 2.
	self assert: gameInstance emptyTilesSize equals: self gameInstance gridSize - self gameInstance occupiedTilesSize.
	"checking that the pos 1@1 has been updated in both occupied and empty tiles collections"
	self assert: ((gameInstance occupiedTiles collect: [:tile | tile position]) includes: 1@1).
	self deny: ((gameInstance emptyTiles collect: [:tile | tile position]) includes: 1@1).


	
	
	