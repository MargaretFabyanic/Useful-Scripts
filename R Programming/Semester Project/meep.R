

#installing packages 
install.packages(c("Rcpp", "readr"))
install.packages("readr")
library(readr)

#importing data into a data.frame called
Landslides<- data.frame(read_csv("Global_Landslide_Catalog_Export.csv"))


#Basic overview of my dataset
summary(Landslides)
head(Landslides)

#Pulling out Columns needed    
Landslides$landslide_size
Landslides$landslide_trigger
Landslides$event_date
Landslides$location_accuracy
Landslides$landslide_category
Landslides$fatality_count
Landslides$injury_count
Landslides$country_name
Landslides$admin_division_name
Landslides$admin_division_population
Landslides$gazeteer_closest_point
Landslides$gazeteer_distance
Landslides$event_date





