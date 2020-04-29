#Set working directory
#setwd('/Users/fer/Documents/RStudioFiles')
#setwd('/Users/arpit/Documents/Data Mining Project')
setwd('/Users/nehabala/Desktop/Data Mining Project')

#Read and call arrest data
arrestData <- read.csv("NYPD_Arrest_Data__Year_to_Date_.csv",header=TRUE)
arrestData
View(arrestData)
 
#Select columns
#2=Arrest_Date
#6=Ofns_Desc
#9=Arrest_Boro
arrestColumns <- arrestData[c(2,6,9)]
#Print arrestColumns
View (arrestColumns)

#Convert Arrest_Date column to date formate using as.Date function
arrestColumns $ARREST_DATE <-as.Date(arrestColumns $ARREST_DATE,"%m/%d/%Y")


#Create new column called month and changes the format to just have the month using format funciton
arrestColumns$Month <- format(arrestColumns$ARREST_DATE,format = "%m")

#Shows the arrestColumn (With the changes above)
View(arrestColumns)

#Converting month values from characters to numeric
arrestColumns$Month <- as.numeric(as.character(arrestColumns$Month))

#Create a new csv file with view processing steps
<<<<<<< HEAD
write.csv(arrestColumns, paste("arrestDataNew.csv"), row.names = F)

#Ofnc_Dec, Boro and Month
ofns_boro_month <- arrestColumns[c(2,3,6)]
write.csv(ofns_boro_month, paste("ofns_boro_month.csv"), row.names = F)
View(ofns_boro_month)

#Month and Ofnc_Dec
ofns_month <- arrestColumns[c(2,6)]
write.csv(ofns_month, paste("ofns_month.csv"), row.names = F)
View(ofns_month)

#Ofnc_dec and Boro
ofns_boro <- arrestColumns[c(2,3)]
write.csv(ofns_boro, paste("ofns_boro.csv"), row.names = F)
View(ofns_boro)



=======
write.csv(arrestColumns, paste("preprocessing.csv"), row.names = F)
>>>>>>> 17385551490a1d9a707ceb00b4c83dad9934a083
