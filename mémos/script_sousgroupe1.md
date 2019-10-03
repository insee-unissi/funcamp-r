# Brainstorming du sous-groupe 1

## Laure (l'exigeante !)

Une liste d'activités qui pourraient être dans le parcours de découverte

- chargement et installation de package
- import de fichiers
- affichage des caractéristiques d'une table
- transformation d'une variable numérique en une variable caractère (et inversement)
- suppression de doublons dans une table
- Avec dplyr:
  - filtre sur les colonnes
  - réorganisation de colonnes
  - filtre sur les lignes
  - tri d'une table
  - création d'une nouvelle variable 
  - calcul de statitistiques (min , max, sum) par regroupement
- calcul de fréquences, calcul de pourcentages en ligne et en colonne
- ajout de lignes, ajout de colonnes dans une table
- écriture d'une condition
- écriture d'une fonction
- fusion de tables
- réalisation de graphiques +graphiques interactifs
- rmarkdown

## Maël (le sage...)

Par ordre décroissant d'importance, les propositions objectifs pédagogiques : 

- comprendre que R est un langage fonctionnel : on enchaine des foncions "simples" qui mises bout à bout produisent un processus plus complexe;
- savoir réaliser un beau graphique en R, un cas qu'on ne pourrait pas faire en excel, par exemple un nuage de point avec taille et couleur du point qui varie avec une variable (et une carte associée éventuellement) ;  
- comprendre le potentiel de la reproductibilité et comment R est fait pour ça ;
- savoir réaliser les principales manipulations de table de données : trier, filtrer, sélectionner, ajouter/modifier des variables, agréger, format long/format large (je n'irais pas sur les jointures qui me semble un risque sur un public débutant, ou alors en étant vraiment sur un cas très simple, comme ajouter le code epci d'une commune) ;
- entendre parler des bonnes pratiques de gestion de projet data : utiliser les projets Rstudio, mettre nos données dans un répertoire à part, séparer les données brutes et les données travaillées, regrouper les fonctions, approche Rmarkdown first  : https://rtask.thinkr.fr/fr/quand-le-developpement-commence-par-la-documentation/ ;
- entendre parler du manifeste tidyverse : https://tidyverse.tidyverse.org/articles/manifesto.html

## Arnaud (le copiste-copieur)

Proposition de découpage en modules (les phases d'énigmes ou de tutoriel). La proposition est plutôt dans la track "apprentissage de R avec éléments de syntaxe", à adapter donc dans la track "apprendre R sans se soucier du code". 

Nous avons un total de 4 heures utiles de tutoriels, donc 240 minutes. Cela m'amène à 7 modules de 20 min chacun + un module récapitulatif de 30 min, soit 170 minutes. Il reste donc une heure environ pour des modules que je vais qualifier d'optionnels (si les premiers demandent plus de temps), chacun de ces modules pouvant demander de l'ordre de 30 min car un peu plus complexes.

Socle
- 1. premiers contacts : créer un objet et le manipuler  
- 2. comment intégrer des données : import de fichier 
- 3. R, un langage fonctionnel - partie 1 : des fonctions intégrées 
- 4. les packages pour enrichir son grimoire de fonctions ; présentation des packages tidyverse (sans les pratiques : c'est par contre le cas dans les items suivants)
- 5. R, un langage fonctionnel - partie 2 : enchaîner des fonctions (ou mon premier pipeline)
- 6. manipuler sens dessus dessous - partie 1 : trier, filtrer, créer des variables, agréger…  (en lien avec l'item précédent sur l'enchainement de fonctions)
- 7. R, pour en mettre plein la vue - partie 1 - savoir réaliser un graphique en R, bien plus facilement que dans d'autres logiciels
- 8. penseR Reproductible : un premier exemple (qui sert aussi de récapitulatif) 

Options
- manipuler sens dessus dessous - partie 2 : les jointures
- R, pour en mettre pleine la vue - partie 2 - une première carte

Enfin, sur les bonnes pratiques R, je propose de l'inscrire sous forme de mini-conférence plenière en clôture, qui viserait à la fois à présenter R-studio (dont on n'aura a priori fait l'impasse pour la track "R sans coder", voire même pour les codeurs via le fait de tout faire en console dans les tutoriels) et les bonnes pratiques pour structurer ces fichiers.

