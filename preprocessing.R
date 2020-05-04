#---------------------------------------- Set working directory ----------------------------------------#
#setwd('/Users/fer/Documents/RStudioFiles')
#setwd('/Users/arpit/Documents/Data Mining Project')
setwd('/Users/nehabala/Desktop/Data Mining Project')

#------------------------------- Read Original Dataset & Clean the Data --------------------------------#
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

#Create a new csv file with the clean data
newDataSet <- arrestColumns[c(2,3,4,5,6,7)]
write.csv(newDataSet, paste("preprocessed.csv"), row.names = F)
View(newDataSet)

#------------------------------- Preprocessing by Converting Datatypes --------------------------------#
#Create a variable to duplicate the data for preprocessing
preprocessed <- newDataSet
#Output the duplicate data with the original datatypes
str(preprocessed)

#Preprocess by converting the original datatypes to Factor
preprocessed$PD_DESC <- as.factor(preprocessed$PD_DESC)
preprocessed$ARREST_BORO <- as.factor(preprocessed$ARREST_BORO)
preprocessed$AGE_GROUP <- as.factor(preprocessed$AGE_GROUP)
preprocessed$PERP_SEX <- as.factor(preprocessed$PERP_SEX)
preprocessed$PERP_RACE <- as.factor(preprocessed$PERP_RACE)
preprocessed$Month <- as.factor(preprocessed$Month)

#Output the duplicate data with the changed datatypes
str(preprocessed)
