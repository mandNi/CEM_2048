as yet unclassified
moveDown
    | downPoint tileBelow nextRandomTile|
    downPoint := self position x @ (self position y + 1).
	 tileBelow := self gameInstance allTiles detect:[:tile | tile position = downPoint ]. 
	
	 nextRandomTile := Game2048Tile new.
	 nextRandomTile withValue: (Random new next < 0.9 ifTrue: [2] ifFalse: [4]).
	 nextRandomTile position: (self gameInstance emptyTiles detect: [:tile | tile position ~= downPoint]) position.
	 self gameInstance addTileOfValue: nextRandomTile withValue atLineColumn: nextRandomTile position. 
	
	^ self mergeDownWithTile: tileBelow.