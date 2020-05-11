#Preprocessing File 3

#------------------------------- Preprocessing by Converting Datatypes --------------------------------#
#Read the file with all the clustered data
clusterFile <- read.csv("clustering.csv",header=TRUE)    
View(clusterFile)

#Create a variable to duplicate the data for preprocessing
preprocessed <- clusterFile
#Output the duplicate data with the original datatypes
str(preprocessed)

#Preprocess by converting the original datatypes to Factor
preprocessed$X <- as.factor(preprocessed$X)
preprocessed$PD_DESC <- as.factor(preprocessed$PD_DESC)
preprocessed$ARREST_BORO <- as.factor(preprocessed$ARREST_BORO)
preprocessed$AGE_GROUP <- as.factor(preprocessed$AGE_GROUP)
preprocessed$PERP_SEX <- as.factor(preprocessed$PERP_SEX)
preprocessed$PERP_RACE <- as.factor(preprocessed$PERP_RACE)
preprocessed$Month <- as.factor(preprocessed$Month)
preprocessed$Direction <- as.factor(preprocessed$Direction)

#Output the duplicate data with the changed datatypes
str(preprocessed)
