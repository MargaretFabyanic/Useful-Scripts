

#installing packages 
install.packages(c("Rcpp", "readr"))
install.packages("readr")
library(readr)

#importing data into a data.frame called
Landslides<- data.frame(read_csv("Global_Landslide_Catalog_Export.csv"))


#Basic overview of my dataset
summary(Landslides)
head(Landslides)


mean(Landslides$admin_division_population[!is.na(Landslides$admin_division_population)])
sd(Landslides$admin_division_population[!is.na(Landslides$admin_division_population)])
median(Landslides$admin_division_population[!is.na(Landslides$admin_division_population)])
summary(Landslides$admin_division_population[!is.na(Landslides$admin_division_population)])
#ggplot(Landslides, aes(x=admin_division_population)) + geom_histogram()

#Pulling out Columns needed    
Landslides$landslide_size
Landslides$landslide_trigger
Landslides$event_date <- 
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

base_plot <- ggplot(data = Landslides) +
  geom_line(aes(x = as.date(event_date), y = fatality_count), 
            color = "#09557f",
            alpha = 0.6,
            size = 0.6) +
  labs(x = "Date", 
       y = "US Unemployed in Thousands",
       title = "Base Plot") +
  theme_minimal()
base_plot


#Gets ride of n/a Values
cleanCountrcollection <- Landslides$country_name[!is.na(Landslides$country_name)]
str(cleanCountrcollection)
#finds unique countries
Countries<-unique(cleanCountrcollection)
Countries


LandSlideEvents<- c()

counter =0
deathcount=0
deaths= c()

for(j in 1:length(Countries)){
  counter =0
  for(i in 1:length(cleanCountrcollection)){
  
  
    if(Countries[j]==cleanCountrcollection[i]){
      counter=counter+1
      
      #deaths = deaths + cleanCountrcollection
      
    }
  
  
  }
  LandSlideEvents= c(LandSlideEvents, counter)
  
}
min(LandSlideEvents)
max(LandSlideEvents)


contrycounts<- data.frame(Countries,LandSlideEvents)

sortedLandSlideEventss<- contrycounts[order(-contrycounts$LandSlideEvents),]
install.packages(ggplot2)
library(ggplot2)
# Basic histogram
ggplot(sortedLandSlideEventss, aes(x=LandSlideEvents)) + geom_histogram()
#ggplot(sortedLandSlideEventss, aes(x= sortedLandSlideEventss$Countries,y=sortedLandSlideEventss$LandSlideEvents)) + geom_bar()

top25Country<- sortedLandSlideEventss[1:25, ]

ggplot(data=top25Country, aes(x= LandSlideEvents, y=Countries, col=LandSlideEvents )) +
geom_count()


uniqueSizeOfLandSlides = unique(Landslides$landslide_size)
uniqueSizeOfLandSlides

uniqueTriggerEvent<- unique(Landslides$landslide_trigger)
uniqueTriggerEvent

TriggerAndSize<- data.frame(Landslides$landslide_size,Landslides$landslide_trigger, Landslides$fatality_count)
TriggerAndSize

ggplot(Landslides, aes(x=fatality_count)) + geom_histogram()
ggplot(Landslides, aes(x=landslide_size, y=fatality_count, col = landslide_size)) +geom_point()

ggplot(Landslides, aes(x=injury_count, y=fatality_count, col = landslide_size)) +geom_point()


ggplot(Landslides, aes(x=longitude, y=latitude, col = landslide_size)) +geom_point()
#ggplot(data=top10Country, aes(x= LandSlideEvents, y=Countries, col=LandSlideEvents )) +geom_quantile()


#just American
unitedstatesLogicSubset<- "United States"==Landslides$country_name
unitedstatesSubset<-Landslides[unitedstatesLogicSubset,]

ggplot(unitedstatesSubset, aes(x=longitude, y=latitude, col = landslide_size)) +geom_point()
mean(unitedstatesSubset$admin_division_population[!is.na(unitedstatesSubset$admin_division_population)])
sd(unitedstatesSubset$admin_division_population[!is.na(unitedstatesSubset$admin_division_population)])
median(unitedstatesSubset$admin_division_population[!is.na(unitedstatesSubset$admin_division_population)])
summarunitedstatesSubsety(unitedstatesSubset$admin_division_population[!is.na(unitedstatesSubset$admin_division_population)])


ggplot(unitedstatesSubset,aes(x=admin_division_population))+geom_histogram()

areas<- unique(unitedstatesSubset$admin_division_name[!is.na(unitedstatesSubset$admin_division_name)])
areas

counter =0
deathcount=0
#deaths= c()
usaEvents<-c()
cleanstates<- unitedstatesSubset[!is.na(unitedstatesSubset$admin_division_name),]

for(j in 1:length(areas)){
  counter =0
  for(i in 1:length(cleanstates$location_description)){
    
    
    if(areas[j]==cleanstates$admin_division_name[i]){
      counter=counter+1
      
      #deaths = deaths + cleanCountrcollection
      
    }
    
    
  }
  usaEvents= c(usaEvents, counter)
  
}


stateEvents<-data.frame(areas, usaEvents)
ggplot(data=stateEvents, aes(x= usaEvents, y=areas, col=usaEvents )) +
  geom_count()


