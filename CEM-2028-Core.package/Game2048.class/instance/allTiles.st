as yet unclassified
allTiles
    "Retourne une collection contenant toutes les tuiles, à la fois vides et occupées."

    ^ (emptyTiles copy addAll: occupiedTiles; yourself)