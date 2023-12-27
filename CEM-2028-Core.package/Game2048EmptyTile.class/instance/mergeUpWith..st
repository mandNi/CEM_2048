as yet unclassified
mergeUpWith: aTile
    "swiper la position de la tuile vide avec celle qui se mettra à sa place, 
    ça permet de mettre à jour l'attribut 'position' dans emptyTiles et occupiedTiles"

    self swipePositionWith: aTile.
    aTile moveUp.
    ^ aTile.