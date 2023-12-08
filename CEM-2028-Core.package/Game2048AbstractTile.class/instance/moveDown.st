as yet unclassified
moveDown
    | downPoint tileBelow nextRandomTilepos nextRandomTile|
    downPoint := self position x @ (self position y + 1).
	 nextRandomTile := Game2048AbstractTile new.
	 nextRandomTile withValue: (Random new next < 0.9 ifTrue: [2] ifFalse: [4]).
	
    tileBelow := self gameInstance emptyTiles detect: [:tile | 
		tile position = downPoint.
		nextRandomTilepos := self gameInstance emptyTiles reject: [:pos | downPoint equals: pos] 
		
		] ifNone: [ 
        self gameInstance occupiedTiles detect: [:tile | tile position = downPoint]
    ].
	 
    ^ self mergeDownWithTile: tileBelow.