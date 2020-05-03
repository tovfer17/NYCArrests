#Set working directory
#setwd('/Users/fer/Documents/RStudioFiles')
#setwd('/Users/arpit/Documents/Data Mining Project')
setwd('/Users/nehabala/Desktop/Data Mining Project')

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
arrestColumns <- arrestData[c(2,4,9,12,13,14)]
#Print arrestColumns
View(arrestColumns)

#Convert Arrest_Date column to date formate using as.Date function
arrestColumns $ARREST_DATE <-as.Date(arrestColumns $ARREST_DATE,"%m/%d/%Y")

#Create new column called month and changes the format to just have the month using format funciton
arrestColumns$Month <- format(arrestColumns$ARREST_DATE,format = "%m")

#Shows the arrestColumn (With the changes above)
View(arrestColumns)

#Converting month values from characters to numeric
arrestColumns$Month <- (as.character(arrestColumns$Month))

#Create a new csv file with the clean data
newDataSet <- arrestColumns[c(2,3,4,5,6,7)]
write.csv(newDataSet, paste("preprocessed.csv"), row.names = F)
View(newDataSet)

#Create a variable to duplicate the data
dataset1 <- newDataSet
str(dataset1)

#Preprocess from Char to Factor
dataset1$PD_DESC <- as.factor(dataset1$PD_DESC)
dataset1$ARREST_BORO <- as.factor(dataset1$ARREST_BORO)
dataset1$AGE_GROUP <- as.factor(dataset1$AGE_GROUP)
dataset1$PERP_SEX <- as.factor(dataset1$PERP_SEX)
dataset1$PERP_RACE <- as.factor(dataset1$PERP_RACE)
dataset1$Month <- as.factor(dataset1$Month)

str(dataset1)
