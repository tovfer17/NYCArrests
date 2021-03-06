#Preprocessing File 2
        
#--------------------------------------- Clustering for Bronx  ----------------------------------------#
#Read the file with the data for Bronx
file1 <- read.csv("1.csv",header=TRUE)

#Cluster the latitude and longitude for Bronx into 4 clusters
cluster1 <- kmeans(file1[7:8], 4)
str(cluster1)

#Create a new column to display which cluster each longitude and latitude belongs to
file1$Direction <- as.factor(cluster1$cluster)
str(cluster1)

#Display the cluser centers
head(cluster1$centers)
#View the file with the new column borough
View(file1)

#------------------------------------- Clustering for Brooklyn  --------------------------------------#
#Read the file with the data for Brooklyn
file2 <- read.csv("2.csv",header=TRUE)

#Cluster the latitude and longitude for Brooklyn into 4 clusters
cluster2 <- kmeans(file2[7:8], 4)
str(cluster2)

#Create a new column to display which cluster each longitude and latitude belongs to
file2$Direction <- as.factor(cluster2$cluster)
str(cluster2)

#Display the cluser centers
head(cluster2$centers)
#View the file with the new column borough
View(file2)

#------------------------------------- Clustering for Manhattan  -------------------------------------#
#Read the file with the data for Manhattan
file3 <- read.csv("3.csv",header=TRUE)

#Cluster the latitude and longitude for Manhattan into 4 clusters
cluster3 <- kmeans(file3[7:8], 4)
str(cluster3)

#Create a new column to display which cluster each longitude and latitude belongs to
file3$Direction <- as.factor(cluster3$cluster)
str(cluster3)

#Display the cluser centers
head(cluster3$centers)
#View the file with the new column borough
View(file3)

#-------------------------------------- Clustering for Queens  --------------------------------------#
#Read the file with the data for Queens
file4 <- read.csv("4.csv",header=TRUE)

#Cluster the latitude and longitude for Queens into 4 clusters
cluster4 <- kmeans(file4[7:8], 4)
str(cluster4)

#Create a new column to display which cluster each longitude and latitude belongs to
file4$Direction <- as.factor(cluster4$cluster)
str(cluster4)

#Display the cluser centers
head(cluster4$centers)
#View the file with the new column borough
View(file4)

#----------------------------------- Clustering for Staten Island  -----------------------------------#
#Read the file with the data for Staten Island
file5 <- read.csv("5.csv",header=TRUE)

#Cluster the latitude and longitude for Staten Island into 4 clusters
cluster5 <- kmeans(file5[7:8], 4)
str(cluster5)                 

#Create a new column to display which cluster each longitude and latitude belongs to
file5$Direction<- as.factor(cluster5$cluster)
str(cluster5)

#Display the cluser centers
head(cluster5$centers)
#View the file with the new column borough
View(file5)

#------------------------------------------ Binding the Data ----------------------------------------#
#Load the required package for binding the data
library(dplyr)

#Combine all the files for clustering into one variable
clustering <- bind_rows(file1, file2, file3, file4, file5)
View(clustering)

#Select the columns to output into the new clustering file
clusteredData <- clustering[c(2,3,4,5,6,9,10)]
View (clusteredData)



#Output the file with all the data combined into one file
write.csv(clusteredData, file = "clustering.csv")
