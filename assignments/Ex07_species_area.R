#' # Ex07: Species vs. Area
#' 
#' 
#' Nutze die Dateien `muenster_districts.csv` und `muenster_trees.csv` aus dem Learnweb für die folgenden Aufgaben.
#' 
#' 
#' * Nutze `dplyr::group_by` und `dplyr::summarise` um die Anzahl der Bäume pro Bezirk zu berechnen.
#' * Mit einem `join` Befehl (z.B. `dplyr::left_join`) oder `merge` können mehrere Tabellen zusammengefügt werden. Erstelle damit eine Tabelle die mindestens folgende Informationen enthält: Bezirksname, Bezirksgröße, Anzahl der Bäume im Bezirk.
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------

library(tidyverse)
trees = read.csv("data/muenster_trees.csv")
districts = read.csv("data/muenster_districts.csv")

# entweder:
tree_summary = trees |> group_by(district) |> count()

# oder:
tree_summary = trees |> group_by(district) |>   
    summarise(AnzahlBaum = length(species))


trees_districts = merge(districts, tree_summary, by = "district")


trees_districts = left_join(districts, tree_summary, by = "district")



#' 
#' * Erstelle einen Scatterplot aus Bezirksgröße und Anzahl der Bäume im Bezirk.
#' * Erstelle ein lineares Model um den Zusammenhang zwischen Bezirksgröße und Anzahl der Bäume im Bezirk zu berechnen.
#' * Erstelle ein Histogramm der Residuen des Models.
#' 
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------

plot(trees_districts$area, trees_districts$n)

lmod = lm(n ~ area, data = trees_districts)

lmod$coefficients

lmod

summary(lmod)

abline(lmod)




lmod = lm(trees_districts$n ~ trees_districts$area)


lmod$residuals

hist(lmod$residuals)

norm = rnorm(100)

hist(norm)
#' 
#' * Logarithmiere Bezirksgröße und Anzahl der Bäume im Bezirk (`log10()`).
#'  Erstelle dann den Scatterplot erneut mit den logarithmierten Werten.
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------

trees_districts$area_log = log10(trees_districts$area)
trees_districts$n_log = log10(trees_districts$n)

plot(n ~ area, data = trees_districts)
plot(n_log ~ area_log, data = trees_districts)

lmod_log = lm(n_log ~ area_log, data = trees_districts)
abline(lmod_log)
summary(lmod_log)
hist(lmod_log$residuals)

#' 
#' 
#' * Erstelle ein lineares Model um den Zusammenhang zwischen logarithmierten Bezirksgröße und Anzahl der Bäume im Bezirk zu berechnen.
#' * Sind die Residuen des Models normalverteilt?
#' 
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------


#' 
#' 
#' * Bonus: Wie viele Bäume stehen Erwartungsgemäß in einem Bezirk der 10000000 qm groß ist?
#' 
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------


predict()
