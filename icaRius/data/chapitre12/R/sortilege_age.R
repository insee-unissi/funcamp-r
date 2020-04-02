# Hello, world!
#
# This is an example function named 'hello' 
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

#' @title calcul_age
#' @description Calculer l'âge d'un statisien, sans arrondi, selon son nombre de coeurs
#' @param nb_coeur A number
#' @examples
#' calcul_age(3)
#' calcul_age(4)
calcul_age <- function(nb_coeur) { 
  nb_coeur * pi^2 - 2 * nb_coeur
}

#' @title calcul_age_arrondi
#' #' @description Calculer l'âge arrondi d'un statisien selon son nombre de coeurs
#' @param nb_coeur A number
#' @import tidyverse
#' @examples
#' calcul_age_arrondi(3)
#' calcul_age_arrondi(4)
calcul_age_arrondi <- function(nb_coeur) { 
  calcul_age(nb_coeur) %>% round()
}