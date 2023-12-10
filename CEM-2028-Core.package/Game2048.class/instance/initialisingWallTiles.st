as yet unclassified
initialisingWallTiles 
"Initialiser les murs pour chaque bord de la grille"

	wallTiles := OrderedCollection new.
	
	1 to: self linesCount do: [:row |
		| wallTile |.
		wallTile := Game2048WallTile new position: 0 @ row.
		self wallTiles add: wallTile.
		
		wallTile := Game2048WallTile new position: row @ 0.
		self wallTiles add: wallTile.
		
		wallTile := Game2048WallTile new position: row @ 5.
		self wallTiles add: wallTile.
		
		wallTile := Game2048WallTile new position: 5 @ row.
		self wallTiles add: wallTile.
		 ].