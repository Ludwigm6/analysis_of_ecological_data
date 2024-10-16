#' # Ex04a: Trees, Districts and base R
#' 
#' 
#' Im Learnweb finden sich die Dateien
#'  `muenster_districts.csv` und `muenster_trees.csv`.
#'   Sie beinhalten Informationen zu den Stadtbezirken und Bäumen in Münster.
#' 
#' - Lade beide Dateien in R.
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------


districts = read.csv("data/muenster_districts.csv")
trees = read.csv("data/muenster_trees.csv")



#' 
#' 
#' - Verschaffe dir einen Überblick über die beiden
#'  data.frames mit den Funktionen `head()`, `str()`.
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------

head(trees)
str(districts)


#' 
#' 
#' - Um Informationen über einzelne Spalten zu erhalten
#'  sind die Funktionen `table()` und `unique()` sehr nützlich. 
#'  Teste die Funktionen mit der `district_group` Spalte.
#' 
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------

table(districts$district_group)

table(districts$district_group, districts$district)

unique(districts$district_group)


#' 
#' 
#' ## Münsters Bezirke
#' 
#' - Welcher Bezirk Münsters ist am größten?
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------

districts[districts$area == max(districts$area), ]

districts[districts$area == max(districts$area), ]$district

districts[districts$area == max(districts$area), "district"]

districts$district[districts$area == max(districts$area)]


library(tidyverse)
districts |> filter(area == max(districts$area)) |> select(district)

#' 
#' - Wie groß ist die Bezirksgruppe "Altstadt"?
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------

sum(districts[districts$district_group == "Altstadt",]$area)

length(districts[districts$district_group == "Altstadt",]$area)


districts |>
    filter(district_group == "Altstadt") |>
    select(area) |>
    sum()


#' 
#' 
#' - Zu welcher Bezirksgruppe gehört der Bezirk "Schloss"?
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------



#' 
#' - Aus welchen Bezirken besteht die Bezirksgruppe "Münster-West"?
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------



#' 
#' 
#' 
#' ## Münsters Bäume
#' 
#' - Wie viele Baumarten gibt es in Münster?
#' 
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------

length(unique(trees$species))


#' 
#' - Wie viele Buchen (species: Fagus) gibt es in Münster?
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------


sum(trees$species == "Fagus")


#' 
#' 
#' - In welchem Bezirk stehen die meisten Bäume?
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------

which.max(table(trees$district))

sort(table(trees$district), decreasing = TRUE)[1]



test = data.frame(col1 = c("a", "a", "a", "b", "b", "b", "c", "c"))

which.max(table(test$col1))
table(test$col1)[table(test$col1) == max(table(test$col1))]


#' 
#' 
#' - In welchem Bezirk stehen die meisten Magnolien (species: Magnolia)?
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------


which.max(table(trees$district[trees$species == "Magnolia"]))


trees |>
    filter(species == "Magnolia") |>
    select(district) |>
    table() |>
    which.max()

#' 
#' 
#' ## Und noch was zum Knobeln:
#' 
#' - Erstelle eine Karte aller Bäume in den Bezirksgruppen "Altstadt" und "Innenstadtring".
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------


district_central = districts[districts$district_group == "Altstadt" | districts$district_group == "Innenstadtring",]$district

# andere schreibweise
district_central = districts[districts$district_group %in% c("Altstadt", "Innenstadtring"),]$district

# baume aus den bezirken filtern
trees_central = trees[is.element(trees$district, district_central),]
trees_central = trees[trees$district %in% district_central,]

plot(trees_central$X, trees_central$Y, asp = 1, cex = 0.1)


