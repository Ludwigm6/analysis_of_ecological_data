## Solution

<details>
    <summary>Click for Answer</summary>
    
    
    
    
    ### Boxplots of the Aranae Species per crop type.
    
    ```{r}
library(ggplot2)

cropspecies = read.csv("data/crop_species.csv")

ggplot(data = cropspecies,
       mapping = aes(x = Croptype,
                     y = AraSpec,
                     fill = Croptype))+
    geom_boxplot()+
    scale_fill_manual(values = c("red", "blue", "green", "yellow", "black"))


## Define colors beforehand
sc = c("KE" = "#66CD00",
       "ZR" = "#FFB90F",
       "SM" = "#FF7F00",
       "WR" = "yellow",
       "WW" = "black")


ggplot(data = cropspecies,
       mapping = aes(x = Croptype,
                     y = AraSpec,
                     fill = Croptype))+
    geom_boxplot()+
    scale_fill_manual(values = sc)

```






### Plot the Carabidae Individuums vs. the Carabidae Species and color the points based on the crop on the field.


```{r}
ggplot(cropspecies, aes(x = CaraInd,
                        y = CaraSpec))+
    geom_point()+
    geom_smooth(method = "lm")+
    geom_point(aes(color = Croptype))
```


### Create a map of the trees in Münster + Heatmap


```{r}
trees = read.csv("data/muenster_trees.csv")


ggplot(trees, aes(x = X, y = Y))+
    geom_point(alpha = 0.5)

ggplot(trees, aes(x = X, y = Y))+
    geom_bin_2d(bins = 40)

ggplot(trees, aes(x = X, y = Y))+
    geom_hex()+
    theme_bw()
```




### A bar plot (geom_col) of the Top 10 districts of Münster with the most trees.

```{r}
districts = table(trees$district)
districts = as.data.frame(districts)


districts = districts[order(districts$Freq, decreasing = TRUE),]
districts_t10 = districts[seq(10),]

ggplot(districts_t10, aes(y = reorder(Var1, Freq), x = Freq))+
    geom_col()
```







### A time series of the oxygen content in the Aasee


```{r}
library(lubridate)

aasee = read.csv("data/2021-07_aasee.csv")
aasee$Datum = lubridate::ymd_hm(aasee$Datum)


ggplot(aasee, aes(x = Datum, y = Sauerstoffgehalt, color = Wassertemperatur))+
    geom_line()+
    geom_abline(slope = 0, intercept = 1, color = "red")+
    scale_x_datetime(name = "Datum")+
    annotate(geom = "text",
             label = "Text",
             x = lubridate::ymd_hm("2021-07-01 02:00"), y = 4)+
    scale_color_gradientn(colors = viridis::inferno(50))
```





</details>
    
    