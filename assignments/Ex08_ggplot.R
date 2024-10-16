#' # Ex08: ggplot Gallery
#' 
#' Erstelle folgende Grafiken mit `ggplot2`:
#' 
#' * Boxplots der Aranae Species pro Feldfruchttyp.
#' 
## -----------------------------------------------------------------





#' 
#' 
#' * Scatterplot der Carabidae Individuen und Carabidae Species.
#'  Die Punkte sollen je nach Feldfrucht unterschiedlich gefärbt sein.
#' 
## -----------------------------------------------------------------

library(tidyverse)
library(ggplot2)

df = read.csv("data/crop_species.csv")


ggplot(df)+
    geom_point(mapping = aes(x = CaraInd,
                             y = CaraSpec,
                             color = Croptype,
                             shape = Croptype))


ggplot(df)+
    geom_point(mapping = aes(x = CaraInd,
                             y = CaraSpec,
                             color = Croptype),
               size = 5)



ggplot(df, mapping = aes(x = CaraInd,
                         y = CaraSpec,
                         color = Croptype))+
    geom_point(size = 2)+
    geom_line()+
    scale_x_continuous(limits = c(0, 600), name = "Individuen")+
    scale_color_manual(values = c("red", "green", "blue", "yellow", "black"))+
    theme_bw()




#




#' 
#' 
#' * Erstelle eine Karte der Bäume Münsters (nur mit ggplot!).
#' 
## -----------------------------------------------------------------




#' 
#' 
#' * Erstelle eine "heatmap" der Bäume in Münster (`geom_bin_2d` or `geom_hex`)
#' 
## -----------------------------------------------------------------



#' 
#' 
#' * Plotte die Zeitreihe der Sommertemperatur in Deutschland mit:
#'     * einer x-Achse in einem Zeitformat. Nutze `lubridate::years()` um das Datum vernünftig zu formatieren.
#'     * einer horizontalen Linie das langjährige Mittel der Temperatur zw. 1961 und 1990 anzeigt.
#'     * Färbe die Zeitreihe nach der Temperatur ein. Nutze eine geeignete Farbskala.
#' 
## -----------------------------------------------------------------




#' 
