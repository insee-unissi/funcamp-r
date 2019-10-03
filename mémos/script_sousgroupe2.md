# [Funcamp R] Principales notions R abordées dans la proposition de contenu 
## Sous-groupe 2
03/10/2019


# Contexte

La majeure partie des notions abordées dans les « exercices » proposés par le sous-groupe 2 sont associées à la syntaxe « dplyr » et plus largement au tidyverse. Pour autant, ces notions pourront être abordées de deux façons selon le niveau d’entrée des participants au Funcamp :
-via un outil « presse bouton » et générateur de syntaxe ;
-via un codage direct sous R-Studio ou dans un autre environnement (Jupyter par exemple).

Le séquençage des opérations proposées suit la logique d’un traitement de données statistiques, depuis l’importation jusqu’au calcul de statistiques de bases et de représentations graphiques.

# Les notions abordées

**1. Importation d’un fichier de données**

**Objectif pédagogique** : être en capacité de créer un objet de type dataframe à partir d’un fichier de données externe à l’environnement R
→ Dans l’exemple, il est proposé de travailler sur un import simple de fichier csv à travers l’utilisation de la fonction **read.csv2**.

	setwd(dir = "Z:/Funcamp R")
	Starwars <- read.csv2("donnees.csv")

**2. Examen préalable d’un dataframe**

**Objectif pédagogique**  : savoir déterminer à travers des tests simples si l’importation de la table s’est bien passée
→ Utilisation des fonctions **ncol()** et **count()** pour déterminer le nombre de lignes et de colonnes d’un dataframe. Possibilité d’utiliser directement la fonction **dim()**.

	Starwars%>%ncol()
	Starwars%>%count()

**3. Sélection d’observations à travers un filtrage sur critères**

**Objectif pédagogique**  : être en mesure de sélectionner une sous-population de mon dataframe et de stocker le résultat dans un nouveau dataframe

→ Utilisation de la fonction **filter()** pour sélectionner la sous-population des humains.

	#Sélectionner la sous-population des humains dans le dataframe starwars 

	humain <- Starwars %>% filter(species == "Human") 

→ Utilisation de la fonction **select()** et **slice()** pour extraire un individu

	#Quelle est l’année de naissance associée au 3ème individu du fichier ? (réponse = 19)

	humain %>%select(« birth_year ») %>%slice(3)


**4. Détermination d’une première statistique : le minimum**

**Objectif pédagogique**  : savoir appliquer une fonction mathématique à une variable d’un dataframe

→ Utilisation de la fonction **summarise()**

	#Quelle est la hauteur du personnage le plus petit ? (reponse=150)

	humain %>% summarise(taille_mini = min(height))

**5. Détermination d’une statistique un peu plus élaborée**

Objectif pédagogique : sensiblement le même que précédemment avec une difficulté supplémentaire

→ Utilisation des fonctions **mutate()**, **summarise()**

	#Calculer le rapport taille/poids, quelle est la somme de ce rapport (réponse=10) 

	humain %>%  mutate(imc = mass/height) %>%   summarise(somme = sum(imc, na.rm = TRUE))

**6. Calcul de statistiques à des fins de comparaison**

**Objectif pédagogique**  : être en capacité de comparer deux sous-populations selon un critère donné

→ 1ère question : Utilisation de **group_by()**, de **summarise()** en intégrant la question des valeurs manquantes 

→ 2ème question : Utilisation de **group_by()**, de **summarise()** et de **arrange()**. D’autres solutions sont possibles.

	#Qui a l'age moyen le plus élevé ?: les femmes (2) ou les hommes (1) (réponse=les femmes) 

	humain %>% group_by(gender) %>% summarise(age_moy = mean(birth_year, na.rm = TRUE))

	#Quelle planete a les habitants les plus jeunes ?  (réponse= Corellia) 

	humain %>% group_by(homeworld) %>% summarise(age_moy = mean(birth_year, na.rm = TRUE)) %>%
	  arrange(age_moy) %>% slice(1)

**7. Concaténation de tables**
    
**Objectif pédagogique**  : savoir empiler des données provenant de dataframe ayant une structure commune.

→ Utilisation de la fonction **union()**

	#Ajouter les Wookiees à la table humain, combien de lignes comporte cette table ? (réponse=33)

	hw <- humain %>% union(Starwars%>%filter(species == "Wookiee") ) 

	hw %>% count

**8. Jointure de tables**

**Objectif pédagogique**  : savoir mettre en relation au sein d’un même dataframe des informations venant de deux dataframe différents.

→ Utilisation de la fonction **inner_join()**


**9. Premiers cas de représentations graphiques**

**Objectif pédagogique**  : être en mesure de faire une première représentation graphique simple.

→ Utilisation du package ggformula (surcouche de ggplot2 mise en avant dans les formations R à l’Insee)

→ 1ère question : utilisation de la fonction **gf_line()**

→ 2ème question : utilisation de la fonction **gf_point()**

	#Importer la table lettremystere.txt

	#Représenter les valeurs de la variable y en fonction des valeurs de x. Quelle est la lettre mystère ? (réponse=M)

	library(ggformula)

	lettrem=read.csv2("Z:/Funcamp R/exercice graphique/lettremystere.txt")

	gf_line(data=lettrem,y~x)

#Les lettres affichées dans le graphique sont en désordre, retrouver le mot caché et l’afficher (réponse = « Funcamp »)

	library(ggformula)

	gf_point(1:7~1:7,pch=c(112,99,109,117,97,110,70),size=4)
