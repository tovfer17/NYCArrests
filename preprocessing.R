#Set working directory
#setwd('/Users/arpit/Documents/Data Mining Project')

#Read and call arrest data
arrestData <- read.csv("NYPD_Arrest_Data__Year_to_Date_.csv",header=TRUE)
arrestData
View(arrestData)
 
#Select columns
#2=Arrest_Date
#6=Ofns_Desc
#9=Arrest_Boro
#17=Latitude
#18=Longitude
#arrestColumns <- arrestData[c(ARREST_DATE,OFNS_DESC,ARREST_BORO,Latitude,Longitude)]
arrestColumns <- arrestData[c(2,6,9,17,18)]
#Print arrestColumns
View (arrestColumns)

#Covert Date column