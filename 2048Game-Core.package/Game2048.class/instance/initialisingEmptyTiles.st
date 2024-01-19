as yet unclassified
initialisingEmptyTiles
	emptyTiles := OrderedCollection new.
	1 to: self linesCount  do: [ :row |
        1 to: self columnsCount do: [ :col |
				|point emptyTile|.
				point := row @ col.
				emptyTile := (Game2048EmptyTile new position: point).
				emptyTiles add: emptyTile.
        ]
    ].
