actions
moveDown
	occupiedTiles do: [:tile |
			(tile hasMovedOrMerged ) ifFalse: [ 
				|downPoint|
				downPoint := tile position x @ (tile position y)+1.
				( emptyTiles includes: downPoint) ifTrue: [ self moveTileDown: tile] ifFalse: [
				|tileBelow|.
				tileBelow := occupiedTiles detect: [:newTile | 
    	        newTile position = downPoint.
        		].
				self moveTileDownAndMergeWith: tile tileToBeMergedWith: tileBelow. 
				 ]
		 ].
	]