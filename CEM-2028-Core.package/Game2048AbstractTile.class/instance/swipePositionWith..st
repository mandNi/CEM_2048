as yet unclassified
swipePositionWith: aTile 
	"swiper la position de la tuile vide avec celle qui se mettra à sa place, 
	ça permet de mettre à jour l'attribut 'position' dans emptyTiles et occupiedTiles"
	
	|tempPos|.
	tempPos := aTile position.
	aTile position: self position.
	self position: tempPos.