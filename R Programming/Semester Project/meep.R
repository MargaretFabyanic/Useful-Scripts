

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


"meep"=="meep "
cleanCountrcollection <- Landslides$country_name[!is.na(Landslides$country_name)]

str(cleanCountrcollection)
uniqueContryValues<-unique(cleanCountrcollection)
uniqueContryValues

#chinacount<- sum(Landslides$country_name==uniqueContryValues[1])
countryCount<- c()

counter =0
for(j in 1:length(uniqueContryValues)){
  counter =0
  for(i in 1:length(cleanCountrcollection)){
  
  
    if(uniqueContryValues[j]==cleanCountrcollection[i])
      counter=counter+1
      
    
  
  
  }
  countryCount= c(countryCount, counter)
  
}
min(countryCount)
max(countryCount)


contrycounts<- data.frame(uniqueContryValues,countryCount)



