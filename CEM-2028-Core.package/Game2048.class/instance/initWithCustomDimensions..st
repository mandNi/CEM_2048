initialize
initWithCustomDimensions: anInteger

	grid := Array new: anInteger * anInteger.
	self linesCount: anInteger.
	self  columnsCount: anInteger.
	occupiedTiles := OrderedCollection new.
	emptyTiles := OrderedCollection new.
	1 to: anInteger do: [ :row |
        1 to: anInteger do: [ :col |
				| point emptyTile|.
				point := row @ col.
				emptyTile := (Game2048EmptyTile new position: point).
				emptyTiles add: emptyTile.
        ]
    ].
	
	^ self 