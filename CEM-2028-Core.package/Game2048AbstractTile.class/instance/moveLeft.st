as yet unclassified
moveLeft
	|leftTile leftPoint|.
	leftPoint := (self position x - 1) @ self position y.
	leftTile := self gameInstance allTiles detect:[:aTile | aTile position = leftPoint ].
	^ self mergeLeftWithTile: leftTile.