as yet unclassified
moveRight
	|rightTile rightPoint|.
	rightPoint := (self position x + 1) @ self position y.
	rightTile := self gameInstance allTiles detect:[:aTile | aTile position = rightPoint ].
	^ self mergeRightWithTile: rightTile.