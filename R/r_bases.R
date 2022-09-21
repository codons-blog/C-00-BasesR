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