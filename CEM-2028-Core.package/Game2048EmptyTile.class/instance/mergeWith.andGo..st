operations
mergeWith: aTile andGo: aDirection
	|directionAction|.
	self swipePositionWith: aTile.
	directionAction := self directionActions at: aDirection.
	directionAction value: aTile. 	"Ici, quand un bloc aTile merge avec un emptyTile (self), on demande à aTile de continuer son mouvement dans la direction du mouvement initial, d'où le 											dictionnaire"
	