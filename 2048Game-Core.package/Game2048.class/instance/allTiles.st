as yet unclassified
allTiles
    "Retourne une collection contenant toutes les tuiles, à la fois vides, mur et occupées."
	 ^ (OrderedCollection new
        addAll: emptyTiles;
        addAll: occupiedTiles;
        addAll: wallTiles;
        yourself)