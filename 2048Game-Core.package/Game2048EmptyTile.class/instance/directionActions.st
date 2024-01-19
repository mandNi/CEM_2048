as yet unclassified
directionActions
 "Retourne un dictionnaire des actions associées à chaque direction."
    ^ Dictionary newFrom: {
        #up -> [:tile | tile moveUp].
        #down -> [:tile | tile moveDown].
        #left -> [:tile | tile moveLeft].
        #right -> [:tile | tile moveRight]
    }.