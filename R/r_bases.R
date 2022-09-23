# Initiation au langage R
# https://elearning.formation-permanente.inrae.fr/course/index.php?categoryid=208

# Installation et premiers pas avec R ----

# Code à taper dans la console - retourne le résultat
22 * 15

# Code qui ne retourne pas de resultat - affectation d'une valeur dans un vecteur
a <- 3

# Afficher le contenu du vecteur a
a

# R ne comprend pas l'instruction
#3,2 + 5
#(3 + 2

# Trucs & astuces
# encoder les scripts par defaut en UTF-8 : Tools > Global Options > Code > Saving > Default text encoding > UTF-8
# desactiver les enregistrements et restaurations automatiques de l'espace de travail : Global Options > General > Basic >
# decocher "Restore RData at startup" + "Save Workspace to .RData on exit" : Never
# Module 1.1 - Le langage et les objets ----

# Deux grandes structures dans R : les fonctions (instructions) et les objets (informations)

# Regles de nommage : [a-z], [A-Z], [0-9], "_", "."

# Caracteres speciaux : # pour commenter du code, ";" pour separer plusieurs instructions

# Operateurs arithmetiques :
# addition : 1+2
# soustraction : 1-2
# division : 10/2
# multiplication : 2*3
# reste de la division entiere : 10%%3
# quotient de la division entiere : 10%/%3

# Operateurs de comparaison :
# superieur : >
# superieur ou egal : >=
# inferieur : <
# inferieur ou egal : <=
# egal : ==
# different : !=

# Operateurs logiques :
# et : &
# ou : |
# non : !

# Operateurs d'assignation : <- et =
# Module 1.1 - Pratiq'R ----

# Ex.1
# largeur_sepales, largeur_sepales, longueur_petales, largeur_petales, espece

# Ex.2
NULL <- 12
?NULL

# Ex.3
a <- 12 ; a <- 5 # a <- 20
a

# Ex.4
5 - 2 + 10
5 + 2 * 3
6 / 2 * 4 / 2
8 * 2 / 2^3

# Ex.5
(12 + 200) * 3 / 2 - (2 * 3)^3

# Ex.6
a <- b <- c <- 12

# Module 1.2 - Les fonctions ----

VectNum <- 1:5
VectNum
log(x = VectNum, base = exp(1))

log(x = 4, base = 10)
log(base = 10, x = 4)
log(4, 10)
log(10, 4)
log(4, base = 10)
log(x = 4, 10)

# Module 1.2 - Pratiq'R ----

