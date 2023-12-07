initialize
initWithCustomDimensions: anInteger

	grid := Array new: anInteger * anInteger.
	self linesCount: anInteger.
	self  columnsCount: anInteger.
	occupiedTiles := OrderedCollection new.
	emptyTiles := OrderedCollection new.
	1 to: anInteger do: [ :row |
        1 to: anInteger do: [ :col |
				| point |.
				point := row @ col.
				emptyTiles add: point.
        ]
    ].
	
	^ self 