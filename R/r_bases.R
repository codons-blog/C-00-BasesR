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


# Module 1.1 - Pratiq'R

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

# Module 1.2 - Pratiq'R

# Ex.1 : sd() -> ecart-type
# Ex.2 : 
# log(8, 2) ou log2(8)
# log(100, 10) ou log10(100)
# Ex.3 : rnorm() -> distribution normale
# Ex.4 : rnorm(n = 50, mean = 10, sd = 2)

# Module 1.3 - Les vecteurs ----



# Vecteur = ensemble homogene d'elements
# 2 types : 

# 1) vecteur simple : vecteurs logiques, numeriques, caracteres

# 1.a) vecteurs numeriques :
# valeurs numeriques (-Inf a +Inf)
# NA
# NaN
num <- seq(from = 1.5, to = 3.5, by = 1)

# 1.b) vecteurs caracteres
# chaines de caracteres : 'chaine' ou "chaine"
# NA
alpha <- c("a", "z", "m")

# 1.c) vecteurs logiques
# TRUE ou FALSE
# NA
logic <- rep(x = c(TRUE, FALSE), times = 2)

# 2) vecteurs augmentes : vecteurs simples + attributs additionnels (factor, matrix)
# 2.a) matrices : 1 vecteur simple + dimensions (ligne et colonne)
ExMat <- matrix(data = 1:10, nrow = 2, byrow = FALSE)

# 2.b) facteurs : variables qualitatives formees d'un nombre reduit de modalites (ordre alphabetique)
ExFactor <- factor(x = c("un", "deux", "trois", "deux", "dix", "deux"))

# Module 1.3 - Pratiq'R
# Ex.1
a1 <- seq(-2, 2, 1)
b1 <- 1:5
c1 <- (1:5)^2
d1 <- 1:16

# Ex.2
gene <- c(rep("AA", 6), rep("AT", 5), rep("TT", 10))

# Ex.3
positif <- a1 >= 0

# Ex.4
a1 + b1
b1 * c1

# Ex.5
a1 * 2

# Ex.6
(1:5)^2

# Ex.7
A1 <- matrix(d1, nrow = 4, byrow = TRUE)
A1O

# Ex.8
gene.f <- factor(gene)

# Module 1.4 - Les listes ----

# Liste = ensemble heterogene d'elements

# 1) data.frame
# structure bidimentionnelle dont les colonnes peuvent contenir des elements de natures differentes
# lignes -> observations
# colonnes -> variables
# toutes les colonnes doivent avoir le meme nombre d'elements
# les colonnes doivent avoir un nom valide

Alpha <- c("a", "b", "c")
Num <- c(15, 35, 32)
Logic <- c(TRUE, FALSE, FALSE)

data.frame(Alpha, Num, Logic)

# ou directement

data.frame(Alpha = c("a", "b", "c"),
           Num = c(15, 35, 32),
           Logic = c(TRUE, FALSE, FALSE))

# 2) list
# structure complexe pouvant contenir l'ensemble des structures de donnees
list(Alpha, Num, Logic)

# Module 1.4 - Pratiq'R

# Ex.1
data("InsectSprays")
class(InsectSprays)
str(InsectSprays)

# Ex.2
dim(InsectSprays)

# Ex.3
str(InsectSprays)

# Module 2.1 - Importer/Exporter des donnees ----

# Formats reconnus par R : 
# texte : .txt, .csv, .tab
# Excel : .xls, .xlsx
# web : .html, .xml
# logiciels SPSS, SAS

# Importer : 
# read.table(file = ..., header = TRUE)
# read.csv() -> sep = "," et dec = "."
# read.csv2() -> sep = ";" et dec = ","
# read.delim() -> sep = "\t" et dec = "."
# read.delim2() -> sep = "\t" et dec = ","

# Exporter : 
# write.table(x = ..., file = ...)
# write.csv()
# write.csv2()

# Module 2.1 - Pratiq'R

# Ex.1
d1 <- read.table(file = "data/Mesures.txt", header = FALSE,
                 sep = "", dec = ",", row.names = 4, na.strings = "-99",
                 comment.char = "!")

# Ex.2
data(iris)
write.table(iris, "data/Fleurs.csv",
            sep = ";", dec = ",",
            row.names = FALSE, col.names = FALSE)

# Module 2.2 - Visualiser/Effacer des objets ----

# Afficher la liste des objets en memoire : objects(), ls()
# Supprimer des objets : remove(), rm()

# Module 2.2 - Pratiq'R

# Ex.1
data(iris)
str(iris)

# Module 2.3 - Selectionner des observations, des variables, des objets ----

# Selectionner avec des operateurs
iris$Sepal.Length
iris[1:10, ]
iris[1:10, "Sepal.Length"]
letters[1:5]
letters[-c(6:26)]

# La fonction subset
subset(x = iris, subset = Species == "setosa", select = "Petal.Width")

# Module 2.3 - Pratiq'R

# Ex.1
data("iris")
iris$Sepal.Length
iris[, 1]
iris[, "Sepal.Length"]

# Ex.2
iris[-10, c(1, 3)]
iris[-10, c("Sepal.Length", "Petal.Length")]

# Ex.3
data("InsectSprays")
subset(x = InsectSprays, subset = spray == "A")

# Ex.4
subset(x = InsectSprays, subset = spray == "B" | spray == "C")

# Module 2.4 - Decouper/Concatener ----

# Ajouter des lignes/colonnes
# rbind() et cbind()
rbind(letters[1:10], LETTERS[1:10])
rbind(letters[1:10], LETTERS[1:6])
rbind(letters[1:10], LETTERS[1:5])

ExMat <- matrix(1:10, nrow = 2)
cbind(ExMat, c(100, 200))

x <- c(2, 3, 4, 5)
y <- c(10, 20, 30, 40, 50)
cbind(x, y)

# Combiner 2 tableaux de donnees
Producteurs <- data.frame(
  NomP = c("Spielberg", "Scorsese", "Hitchcock", "Tarantino", "Polanski"),
  Nationalite = c("US", "US", "UK", "US", "Poland"))

Films <- data.frame(
  Nom = c("Spielberg", "Scorsese", "Hitchcock", "Hitchcock", "Spielberg", "Tarantino", "Polanski"),
  Titre = c("Super 8", "Taxi Driver", "Psycho", "North by Northwest", 
            "Catch Me If You Can", "Reservoir Dogs", "Chinatown"))

merge(x = Producteurs, y = Films, by.x = "NomP", by.y = "Nom")

# Module 2.4 - Pratiq'R

# Ex.1
data("InsectSprays")
head(InsectSprays)

# Ex.2
A <- subset(x = InsectSprays, subset = spray == "A", select = count)
B <- subset(x = InsectSprays, subset = spray == "B", select = count)
C <- subset(x = InsectSprays, subset = spray == "C", select = count)
D <- subset(x = InsectSprays, subset = spray == "D", select = count)
E <- subset(x = InsectSprays, subset = spray == "E", select = count)
F <- subset(x = InsectSprays, subset = spray == "F", select = count)

# Ex.3
Traitement <- cbind(A, B, C, D, E, F)

# Module 2.5 - Trier/Ordonner ----

# Trier
# sort(x, decreasing = TRUE/FALSE, na.last = NA/TRUE/FALSE)
Test <- c(10, 2.3, 8, 100, 2.31, NA)
Test
sort(Test, na.last = FALSE)

Test <- c("Un", "1", "e", "E", "é", "è")
sort(Test)

# Ordonner
Test <- c(10, 2.3, 8, 100, 2.31, NA)
Test
order(Test)
Test[order(Test)]

# Module 2.5 - Pratiq'R

# Ex.1
data("chickwts")
sort(chickwts$weight, decreasing = TRUE)

# Ex.2
chickwts[order(chickwts$feed), ]
chickwts[order(chickwts$feed, chickwts$weight), ]

# Module 3.1 - Representations graphiques ----

# Une variable quantitative
hist(x = iris$Sepal.Length,
     main = "Longueur des sépales", xlab = "Longueur", ylab = "Probabilité",
     breaks = seq(4, 8, 0.25),
     xlim = c(4, 8),
     freq = FALSE)

# Une variable qualitative
Couleurs <- c(Bleu = 5, Rouge = 10, Jaune = 8, Noir = 7)

barplot(Couleurs,
        col = c("blue", "red", "yellow", "black"),
        space = 0.6,
        main = "Distribution des couleurs")

pie(Couleurs, col = c("blue", "red", "yellow", "black"),
    main = "Diagramme circulaire")

dotchart(Couleurs,
         col = c("blue", "red", "yellow", "black"),
         main = "Dotchart")

# Les couples de variables
# quant/quant (plot) ; qual/quant (boxplot) : qual/qual (barplot)

plot(Sepal.Width ~ Sepal.Length, data = iris,
     xlab = "Longueur des sépales",
     ylab = "Largeur des sépales",
     main = "Relation entre 2 variables")

boxplot(Petal.Length ~ Species, data = iris)

data("HairEyeColor")
males <- HairEyeColor[,,1]
females <- HairEyeColor[,,2]
d1 <- males + females

barplot(d1, legend.text = TRUE)
barplot(d1, legend.text = TRUE, beside = TRUE)
barplot(d1, legend.text = TRUE, beside = TRUE,
        col = c("black", "brown", "red", "yellow"))

# Plusieurs variables
pairs(iris)

# Module 3.1 - Pratiq"R

# Ex.1
hist(iris$Sepal.Length, xlab = "Longueur des sépales", ylab = "Fréquence")

# Ex.2
plot(Sepal.Length ~ Sepal.Width, data = iris)

# Ex.3
boxplot(count ~ spray, data = InsectSprays)

# Module 3.2 - Enrichir un graphique ----

# Personnaliser un graphique

# titre : main
# axes : xlab, ylab
# bornes : xlim, ylim
# couleur : col

# type de symbole pour les points : pch
# taille des symboles : cex

plot(Sepal.Width ~ Sepal.Length, data = iris,
     xlab = "Longueur des sépales", ylab = "Largeur des sépales",
     main = "Relation entre 2 variables",
     col = "red", pch = 19, cex = 2)

# Ajouter des elements a un graphique

# points() pour ajouter des points
# text() pour ajouter du texte
# abline() pour ajouter des droites
# lines() pour ajouter des lignes
# arrows() pour ajouter des fleches
# axis() pour ajouter/modifier les axes

plot(Petal.Width ~ Petal.Length, data = iris)
points(x = 3.76, y = 1.20, pch = "+", col = "red")
text(x = 3, y = 1.8, label = "Moyenne", col = "red")
arrows(x0 = 3.7, y0 = 1.25, x1 = 3, y1 = 1.7,
       code = 1, col = "red", length = 0.15, lwd = 1)
axis(side = 3)

# Module 3.2 - Pratiq'R

plot(Sepal.Length ~ Sepal.Width, data = subset(iris, Species == "setosa"), col = "red", pch = 19)
plot(Sepal.Length ~ Sepal.Width, data = subset(iris, Species == "versicolor"), col = "blue", pch = 15)
plot(Sepal.Length ~ Sepal.Width, data = subset(iris, Species == "virginica"), col = "green", pch = 17)

# Module 3.3 - Modifier des graphiques ----



# 3 zones : 
# 1) marges exterieures 
# notees 1 (en bas), 2 (gauche), 3 (en haut) et 4 (droite)
# oma : dimension des marges en nb de lignes -> par(oma(2, 2, 2, 2))
# omi : dimension des marges en nb de pouces

# 2) marges interieures
# mar -> nb de lignes
# mai -> pouces

# 3) zone de donnees

par(oma = c(2, 2, 2, 2), mar = c(2, 2, 2, 2))
plot(1, 1, type = "n", frame.plot = TRUE, axes = FALSE, xlab = NA, ylab = NA)
box(which = "outer", col = "red")
box(which = "inner", col = "blue")
mtext(text = "Marge exterieure 3", side = 3, line = 1, outer = TRUE, col = "red")
mtext(text = "Marge exterieure 4", side = 4, line = 1, outer = TRUE, col = "red")
mtext(text = "Marge interieure 1", side = 1, line = 1, outer = TRUE, col = "blue")
mtext(text = "Marge interieure 2", side = 2, line = 1, outer = TRUE, col = "blue")

# Module 3.3 - Pratiq'R

par(oma = c(2, 0, 3, 0) + 0.1, mar = c(4, 4, 0, 1) + 0.1)
plot(Sepal.Length ~ Sepal.Width, data = iris)
mtext(text = "Relation entre la longueur et la largueur des sépales", adj = 0,
      side = 3, line = 2, col = "blue", outer = TRUE)
mtext(text = "Trois espèces d'iris : setosa, versicolor et virginica", adj = 0,
      side = 3, line = 1, col = "blue", outer = TRUE)
mtext(text = "Créé avec R", adj = 1, cex = 1.5,
      side = 1, col = "red", outer = TRUE)

# Module 3.4 - Associer des graphiques ----

# Diviser une zone de graphiques en cases :
# mfcol() et mfrow()

par(mfcol = c(2, 3))
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
boxplot(iris$Sepal.Length)
boxplot(iris$Sepal.Width)
plot(Sepal.Length ~ Sepal.Width, data = subset(iris, Species == "setosa"))
plot(Sepal.Length ~ Sepal.Width, data = subset(iris, Species == "versicolor"))
par(mfcol = c(1, 1))

# Module 3.4 - Pratiq'R

par(mfrow = c(2, 2), mar = c(4, 4, 1, 1))
plot(Sepal.Length ~ Sepal.Width, data = iris, xlim = c(2, 4.4), ylim = c(4.3, 7.9))
plot(Sepal.Length ~ Sepal.Width, data = subset(iris, Species == "setosa"), pch = 19, col = "red")
plot(Sepal.Length ~ Sepal.Width, data = subset(iris, Species == "versicolor"), pch = 15, col = "blue")
plot(Sepal.Length ~ Sepal.Width, data = subset(iris, Species == "virginica"), pch = 17, col = "green")

# Module 3.5 - Sauvegarder les graphiques ----

# format image (matrice composee de pixels) : .gif, .jpg, .png, .tiff, ...
# format vectoriel (description geometrique des elementes graphiques) : .eps, .pdf, .svg

# image : tiff(), jpeg(), png()
# vectoriel : pdf(), postcript()

png(filename = "img.png")
plot(x = 1:5, y = 21:25)
dev.off()

# Module 3.5 - Pratiq'R

png(filename = "img.png")
plot(x = 1:5, y = 21:25)
dev.off()

pdf(file = "img.pdf")
plot(x = 1:5, y = 21:25)
dev.off()

# Module 4.1 - Les structures de controle ----

