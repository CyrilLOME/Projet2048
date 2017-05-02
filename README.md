# Projet2048 Cyril LOME et Alexandre DUFOUR
Repository for a 2048 school project in c++

Le but de ce projet est de programmer un jeu de 2048 (règles classiques) avec une interface graphique.

Il y a donc plusieurs points de programmation
(1) Le fonctionnement du jeu, à travers une classe servant à traiter les événements liés aux action du joueur : la classe Grille.
(2) L'interface graphique, designée sous Qt avec l'outil graphique
(3) Le lien entre la grille et l'interface graphique :
    - Quand le joueur appuie sur une touche du clavier, il lance une méthode de la classe grille sui traite le cas correspondant.
    - Quand la grille est modifiée, les valeurs à cheval entre C++ et Qt sont modifiées et l'interface graphique se rafraîchit
    
Le jeu n'est pas programmé en entier :
(1) Dans la grille, il existe une erreur de traitement. Lorsque le joueur appuie sur une touche, il ne devrait y avoir qu'une seule addition de cases au maximum. Néanmoins, si la configuration le permet, il se peut qu'il effectue deux sommes en un seul coup si la disposition le permet : pour une itération vers la droite, la ligne [4 2 2 0] va effectuer les étapes suivantes
    [4 2 0 2] (le 2 se décale car il n'y a pas de somme à faire
    [4 0 0 4] (le premier 2 s'additionne au deuxième car il le détecte)
    [0 0 0 8] (le premier 4 s'additionne au deuxième car il le détecte)
On devrait obtenir [0 0 4 4] car il ne peut y avoir qu'un addition par tour.
Ce problème aurait pu être traité si le jeu fonctionnait et s'il nous disposions de plus de temps.
(2) Il y a un début de liaison entre l'interface graphique de la grille et la grille : conversion de la grille en QList de QList de Qstring (resp. QColor pour les couleurs des cases) (c'est-à-dire, un matrice de QString (resp. QColor) lisible par qml). Nénamoins, le programme ne fonctionne pas et renvoie une liste de liste d'éléments vides. Qt ne peut donc pas lire les informations de la grille.

Pour vérifier que la grille fonctionne effectivement, il est possible d'utiliser le projet parallèle C++ qui implémente la classe TestGrille et la teste dans le mainTestGrille. Le jeu s'éffectue dans un terminal standard, sans interface graphique.
