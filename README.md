# CEM_2048

Ce projet a été fait par : 

- Nizar Mandour ( mandNi sur github )

- Rachid Chabane ( RachidChabane )

- Lina El idrissi ( ElidrissiLina ) 


Le projet contient toute la logique du jeu.

La logique du jeu est dans CEM-2048-Core, les tests sont dans CEM-2O48-Tests.


# Design decisions :

## Héritage, polymorphisme et double dispatch 

    N'ayons pas réussi à lier la partie UI (Bloc et Myg) avec la conception de notre jeu au début, nous avions décidé de nous concentrer sur la logique algorithmique du jeu.

    Nous avons modélisé les blocs ( Tile ) avec une classe AbstractTile qui contient les comportements et attributs en commun avec les trois types de bloc : EmptyTile, wallTile et Tile.

    Grâce au polymorphisme, à l'héritage et au double dispatch, un envoi de message (moveLeft, moveRight, moveUp ou moveDown) à une Tile, fais en sorte de choisir son voisin et envoie le message : 

    AbstractTile >>  mergeWith: voisin andGo: aDirection.

    Le résultat de ce message est de demander au voisin de mergeWith la Tuile actuelle (self), d'où le double dispatch.

    Chaque type de Tile (voisin) redéfinit le comportment mergeWith:andGo: et traite l'action de merge différement.

    De cette manière, nous nous posons pas de question sur le type du voisin au moment du merge, le double dipatch ici nous a permis d'envoyer le message peu importe le type du paramètre.

## Observer / Observable

    L'ors d'un merge entre deux Tile du même type et de la même valeur, un message ( notifyGame ) est envoyé à la Tile, cette dernière alerte l'instance du jeu du changement.

    L'instance du jeu (Game) met à jour les positions des Tile ainsi que le contenu de ses collections occupiedTiles et emptyTiles.

    Le pattern Observer / Observable nous a permis de respecter une partie de la loi de Demeter, dans le sens où ce n'est pas la Tile qui modifie la position ainsi que l'état des collections de l'instance du jeu (game).


## Dictionnaire 

<a href="https://ibb.co/prwk0sm"><img src="https://i.ibb.co/R4bJvM5/dict.png" alt="dict" border="0" /></a>

    Le dictionnaire ci-dessus nous a permis d'unifier les envois de messages de mouvement aux Tile. Nous avions opté au début pour une solution plus redondante avec plusieurs méthodes : mergeUpWith: ; mergeDownWith: ; mergeLeftWith: et mergeRightWith:

    Le fait de binder les 4 directions (#up, #down, #left et #right) à une fonction anonyme qui prend une tuile en argument et lui applique un mouvement, nous a permis de tout rassembler en une seule méthode mergeWith: aTile andGo: aDirection.

<a href="https://imgbb.com/"><img src="https://i.ibb.co/BVytvjJ/after-Dict.png" alt="after-Dict" border="0" /></a>

    La méthode mergeWith:andGo: prend ici une tuile et une direction en arguments. Elle utilise swipePositionWith: pour échanger la position avec une autre tuile, puis récupère l'action associée à la direction donnée dans le dictionnaire directionActions et applique cette action à la tuile.

    Cette méthode permet d'ajouter le comportement de mouvement en fonction de la direction de manière dynamique et flexible, en évitant de coder en dur la logique de mouvement et en exécutant plutôt la méthode de déplacement correspondante sur la tuile.

## WallTile

    En plus des EmptyTile et Tile, nous avons modélisé les blocs mur d'une manière dynamique, de sorte à entourer la grille peu importe sa taille. 

    Ces WallTile redéfinissent à leur tour la méthode mergeWith: aTile andGo: aDirection de sorte à ne rien faire.

## Test coverage

<a href="https://imgbb.com/"><img src="https://i.ibb.co/FWFyG5c/test.png" alt="test" border="0" /></a>

    Les tests couvrent à peu près toute la logique du jeu (96,15 % )

    isGridFull n'a pas été testée vu que l'on n'a pas implémenté la UI. 
    
    Reproduire un scénario où la grille est quasi complète, puis faire un mouvement qui fait qu'il n' y ait plus de merge possible s'est avéré compliqué.





