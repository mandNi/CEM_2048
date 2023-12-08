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

	"Initialiser les murs"
	0 to: 5 do: [:row |
		| point wallTile |.
		point := row @ 0.
		wallTile := Game2048WallTile new position: point.
		
		 ].
	
	
		
	
	^ self 