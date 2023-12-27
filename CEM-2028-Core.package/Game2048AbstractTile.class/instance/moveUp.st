actions
moveUp
	| tileAbove upPoint |
   upPoint := self position x @ (self position y - 1).
   tileAbove := self gameInstance allTiles detect:[:aTile | aTile position = upPoint].
   ^ self mergeUpWithTile: tileAbove.
