library(tidyverse)
# starwars
# starwars2 <- starwars %>% 
#   mutate(id = row_number()) %>% 
#   select(c(14,1,10,2,3,7,8,9)) %>% 
#   filter(!name %in% c("Arvel Crynyd","Finn","Rey","Poe Dameron"))
#
# write.csv2(starwars2, "donnees.csv",  row.names = F)

# Importer la table
Starwars <- read.csv2("donnees.csv")

# Combien il y a de colonnes dans la table 8
ncol(Starwars)

# Filtrer les humains (on travaillera par la suite sur cette table) 
# puis determiner quelle est la valeur de la 3eme ligne 6eme colonne 19 

humain <- Starwars %>%
  filter(species == "Human") 

humain %>%
  select(6) %>%
  slice(3)

# combien y a t-il de lignes dans cette table 31 

humain %>%
  count()

# quelle la hauteur du personnage le plus petit 150 

humain %>%
  summarise(taille_mini = min(height))

# calculer le rapport taille/poids, quelle est la somme de ce rapport 10 

humain %>%
  mutate(imc = mass/height) %>%
  summarise(somme = sum(imc, na.rm = TRUE)) %>%
  round(0)

# Qui a l'age moyen le plus élevé: les femmes (2) ou les hommes (1) 2 

humain %>%
  group_by(gender) %>%
  summarise(age_moy = mean(birth_year, na.rm = TRUE))

# Quelle planete a les habitants les plus jeunes ? attention à la casse ! Corellia 

humain %>%
  group_by(homeworld) %>%
  summarise(age_moy = mean(birth_year, na.rm = TRUE)) %>%
  arrange(age_moy) %>%
  slice(1)

# A la table humain ajouter les Wookiees, combien de lignes desormais 33 

hw <- humain %>%
  bind_rows(Starwars %>% 
              filter(species == "Wookiee") ) hw %>%
  count

# film <- starwars %>%
#   select(1, 11) %>% 
#   mutate(nb_films = lengths(starwars$films)) %>%
#   unnest(films) %>% 
#   mutate(n = 1) %>% 
#   spread(films, n)
# write_csv(film, "film.csv")

# code 81931150102Corellia33
# deblocage du zip
film <- read_csv("film.csv")

# Jointure
hw_film <- hw %>%
  inner_join(film, by = "name")
