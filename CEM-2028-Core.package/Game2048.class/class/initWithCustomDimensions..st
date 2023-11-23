as yet unclassified
initWithCustomDimensions: anInteger

	| gameInstance |
	gameInstance := self new.

	gameInstance linesCount: anInteger.
	gameInstance columnsCount: anInteger.
	
	^ gameInstance