## Langage de description de jeux

### Ludii

Ludii est assez géneraliste et permet de décrire un grand nombre de jeux. Il est basé sur un langage de description de jeux (Ludii Game Description Language) qui utilise une syntaxe déclarative pour définir les règles, les composants et les mécanismes des jeux.
Il possède une grande diversité de jeux représentables avec une description structurée du matériel, des règles et des conditions de fin fin de partie. Il permet également l'intégration de joueur IA.

### Game Description Language (GDL)

GDL est un langage logique de plus bas niveau utilisé dans le domaine du General Game Playing. Il représente les rôles des joueurs, l'état du jeu, les actions légales, les transitions d'état et les conditions terminales. Il permet :
- Séparation entre la description du jeu et l'algorithme du joueur.
- Définition formelle des actions autorisées et des états successifs.
- Possibilité d'utiliser un même système de raisonnement pour plusieurs jeux.

### Regular Boardgames (RBG)

RBG est un langage de description destiné aux jeux de plateau et, plus généralement, aux jeux finis, déterministes, à tours successifs et à information parfaite.

### Zillions Rules File (ZRF)

ZRF est un langage de description de jeux de plateau qui permet de définir les règles et les composants d'un jeu. Il s'agit d'un langage textuel à blocs avec une syntaxe proche de Lisp, permettant de créer des jeux et de les intégrer dans l'environnement Zillions.

## IA et solveur

On peut utiliser des arbres de recherches pour résoudre les jeux, en utilisant des algorithmes comme Minimax, Alpha-Beta pruning, Monte Carlo Tree Search (MCTS), etc. Ces algorithmes permettent de déterminer les meilleures actions à prendre dans un jeu donné, en fonction de l'état actuel du jeu et des règles définies. Si un jeu venait avoir un espace assez restreint pour être résolu, on pourrait utiliser des techniques de recherche exhaustive pour trouver la solution optimale.

## Format et protocole

- PGN est un format textuel destiné à enregistrer des parties d'échecs, avec des métadonnées et une représentation des coups. Il facilite l'archivage, le partage et l'analyse des parties.
- UCI est un protocole de communication entre une interface d'échecs et un moteur. Il définit notamment des échanges permettant d'initialiser le moteur, de lui transmettre une position et de demander la recherche du meilleur coup.
- GTP est un protocole textuel de commande et de réponse entre un programme client et un moteur de go. Il permet notamment de transmettre des commandes de jeu et de récupérer des réponses du moteur.