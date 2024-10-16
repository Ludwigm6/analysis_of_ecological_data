#' # Ex04b: Trees, Districts and the tidyverse
#' 
#' Im Learnweb finden sich die Dateien `muenster_districts.csv` und `muenster_trees.csv`. Sie beinhalten Informationen zu den Stadtbezirken und Bäumen in Münster.
#' 
#' - Bearbeite die unten stehenden Aufgaben mit `dplyr` Funktionen und pipes `|>` bzw. `%>%` !
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------



#' 
#' 
#' ## Münsters Bezirke
#' 
#' - Wie groß ist die Bezirksgruppe "Altstadt" (Fläche)?
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------


#' 
#' - Zu welcher Bezirksgruppe gehört der Bezirk "Schloss"?
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------


#' 
#' - Aus welchen Bezirken besteht die Bezirksgruppe "Münster-West"?
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------


#' 
#' - Erstelle eine Tabelle die für jede Bezirksgruppe den Mittelwert und die Standardabweichung der Fläche der jeweiligen Bezirke berechnet. Nutze dafür die Funktionen `dplyr::group_by()` und `dplyr::summarise()`
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------



#' 
#' 
#' 
#' ## Münsters Bäume
#' 
#' - Wie viele Baumarten gibt es in Münster?
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------



#' 
#' - Wie viele Buchen (species: Fagus) gibt es in Münster?
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------



#' 
#' - Erstelle eine Tabelle die für jeden 
#' Bezirk die Anzahl unterschiedlicher Baumarten angibt.
#'  Nutze dafür die Funktionen `dplyr::group_by()` und `dplyr::summarise()`
#' 
## ----------------------------------------------------------------------------------------------------------------------------------------------------------


trees |> group_by(district) |> 
    summarise(length(unique(species)))





