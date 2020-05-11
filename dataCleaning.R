#Preprocessing File 1
      
#---------------------------------------- Set working directory ----------------------------------------#
setwd('/Users/fer/Documents/RStudioFiles/NYCArrests')
#setwd('/Users/arpit/Documents/Data Mining Project')
#setwd('/Users/nehabala/Desktop/Data Mining Project')

#------------------------------- Read Original Dataset & Select Columns --------------------------------#
#Read and call arrest data
arrestData <- read.csv("NYPD_Arrest_Data__Year_to_Date_.csv",header=TRUE)
View(arrestData)

#Select columns
#2=Arrest_Date
#4=Pd_Desc
#9=Arrest_Boro
#12=Age_Group      
#13=Perp_Sex
#14=Perp_Race
#17=Latitude
#18=Longitude
arrestColumns <- arrestData[c(2,4,9,12,13,14,17,18)]
#Print arrestColumns
View(arrestColumns)

#Convert Arrest_Date column to date formate using as.Date function
arrestColumns $ARREST_DATE <-as.Date(arrestColumns $ARREST_DATE,"%m/%d/%Y")
#Create new column called month and changes the format to just have the month using format funciton
arrestColumns$Month <- format(arrestColumns$ARREST_DATE,format = "%m")
#Shows the arrestColumn (With the changes above)
View(arrestColumns)

#Create a new csv file with the clean data
newDataSet <- arrestColumns[c(2,3,4,5,6,7,8,9)]
View(newDataSet)

#------------------------------- Spliting the Data Based on the Columns --------------------------------#
#Split the dataset based on each borough
splitData = split(newDataSet, newDataSet$ARREST_BORO)
View (splitData)

#For Loop to output the data of each borough
for(i in 1:length(splitData))
{
  filename <- paste0(i, ".csv")
  write.csv(splitData[[i]], filename)
}
