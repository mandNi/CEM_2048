as yet unclassified
moveDown
	|tileBelow downPoint|.
	downPoint := self position x @ (self position y + 1).
	tileBelow := self gameInstance allTiles detect:[:aTile | aTile position = downPoint ].
	^ self mergeWithTile: tileBelow andGo: #down.