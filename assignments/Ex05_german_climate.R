## Ex05: German Climate


#Download the regional average summer temperature of germany:
#    https://opendata.dwd.de/climate_environment/CDC/regional_averages_DE/seasonal/air_temperature_mean/regional_averages_tm_summer.txt



# The file is a simple `.txt` file. Open it with a text editor and have a conscious look at the structure and content.
# Load the file into R with the `read.table` or `read.csv` function.
# To read the file properly, set the arguments skip = 1 and sep = ";"









# Which year had the warmest summer in Bayern since the beginning of the recordings?

# What was the average summer temperature in Nordrhein-Westfalen since the year 2000.

# Which German state had the coldest summer in the year 2005.


## Pivots
#---------------------------------------

## Create a subset that only contains the columns Jahr, Thueringen and Sachsen.Anhalt.
## Convert this `data.frame` to the long format with `tidyr::pivot_longer` with three columns: "Jahr", "Bundesland" and "Temperatur".
## Check out http://teaching.mlspatial.org/analysis_of_ecological_data/df04_wide_long.html for help.


## Compare the temperature of Thueringen and Sachsen.Anhalt: 
## Use a `boxplot` to visualize both state's summer temperatures.
## Use a `t.test` to check if there are significant differences between the summer temperatures of both states? 
## Hint: for these tasks you need the `y ~ x`. Check out http://teaching.mlspatial.org/analysis_of_ecological_data/R08_formula.html for help.




## Climate Change in Germany
#---------------------------------------------------

# Calculate the average summer temperature of Germany between the years 1961 and 1990.


# Calculate the temperature anomaly for each year in Germany, 
# i.e. the deviation of the yearly temperature to the calculated long term average. 
# Save this anomaly information in a new column in the data.frame.



# Create a first plot of the anomaly per year. 
# Set the argument `type = "h"` in the `plot` function to get bars instead of points.



# To get the some color in the plot, we need to encode the anomaly information into groups.
# To do this, create a new column that contains the word "blue" for years with a negative temperature anomaly
# and the word "red" for positive anomalies.
# Hint: You can do this in two lines of code without any function, or in one line of code with the `ifelse` function.
# Create the plot again, but this time set the argument `col` (which stands for color) to your new column that contains the color information.






