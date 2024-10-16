#' # Ex03: iris
#' 
#' 
#' ## Dataframes
#' 
#' Zum Testen von Funktionen und zur Übung stellt R verschiedene Datensätze zur Verfügung. 
#' Der wohl bekannteste Datensatz davon ist `iris` er kann folgendermaßen geladen werden:

data(iris)
head(iris)


#' * Teste folgende Funktionen mit dem Iris Datensatz:
#'  `length()`, `nrow()`, `ncol()`, `summary()`, `colnames()`.

length(iris)
nrow(iris)
ncol(iris)
summary(iris)
colnames(iris)



#' * Speichere die Species Spalte in einer neuen Variablen. 
#' Um was für ein R Objekt handelt es sich nun?

arten = iris$Species

#' * Wie viele Species sind im Datensatz
#'  enthalten und wie oft kommt jede Species vor?

summary(arten)
table(arten)

petal = iris$Petal.Length

summary(petal)
table(petal)

unique(iris$Species)
length(unique(iris$Species))



vec = c("a", "b", "c", "c", "c", "d", "d")

vec
length(unique(vec))


#

iris$Species



#' ## Dataframe subsetting
#'
#' * Erstelle einen neuen data.frame der nur
#'  die Beobachtungen der Species "virginica" enthält.

#iris_species = iris$Species

iris$Species == "virginica"

arten = iris$Species

arten_vir = iris$Species == "virginica"
iris_virginca = iris[arten_vir , ]


#' * Erstelle einen neuen data.frame der
#'  nur die Beobachtungen der Species "setosa" und "versicolor" enthält.

# Variante 1:
iris_set_versi = iris[iris$Species != "virginica", ]

# Variante 2:
iris[iris$Species == "setosa" | iris$Species == "versicolor", ]

# Variante 3:
iris_set = iris[iris$Species == "setosa", ]
iris_versi = iris[iris$Species == "versicolor", ]

iris_set_versi_rbind = rbind(iris_set, iris_versi)



#' * Erstelle einen neuen data.frame der extakt die erste Hälfte der Beobachtungen enthält.

seq(nrow(iris)/2)

iris_halb = iris[1:(nrow(iris)/2), ]


#' * Erstelle einen neuen data.frame der nur Beobachtungen
#'  enthält mit einer Sepal.Length zwischen 5.5 und 7.

iris_sepal = iris[iris$Sepal.Length >= 5.5 & iris$Sepal.Length <= 7.0 , ]


#' ## Dataframe additions
#' 
#' * Füge dem iris data.frame eine neue Spalte names "Genus" 
#' hinzu die in allen Reihen das Wort "iris" enthält.


iris$genus = "iris"
#' * Füge dem iris data.frame eine neue Spalte names "ID"
#'  hinzu in der jede Reihe eine fortlaufende Zahl enthält.

iris$ID = seq(1, 150)
iris$ID = seq(1, nrow(iris))


#' * Füge dem iris data.frame zwei neue Spalten hinzu
#'  die jeweils den Flächeninhalt der Sepal und Petal beinhaltet (also length x width).

iris$flaeche_sepal = iris$Sepal.Length * iris$Sepal.Width


#' ## Ein bisschen Statistik
#' 
#' * Was ist die durchschnittliche Sepal.Length von "virginica"?



mean(iris_virginca$Sepal.Length)

# alles in einem
mean(iris[iris$Species == "virginica", ]$Sepal.Length)

# oder:
mean(iris[iris$Species == "virginica", "Sepal.Length"])


#' * Zeichne ein Histogramm der Sepal.Width.
table(iris$Sepal.Width)
hist(iris$Sepal.Width)


#' * Berechne die Varianz und Standardabweichung der Sepal.Width.



var(iris$Sepal.Width)

sd(iris$Sepal.Width)

#' * Erstelle einen Scatterplot mit der 
#' Sepal.Length auf der x-Achse und der Petal.Length auf der y-Achse.

scatter.smooth(x = iris$Sepal.Length,
               y = iris$Petal.Length)

plot(x = iris$Sepal.Length,
     y = iris$Petal.Length,
     col = iris$Species)





