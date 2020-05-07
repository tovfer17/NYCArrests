#--------------------------------------- Clustering for Bronx  ----------------------------------------#
file1 <- read.csv("1.csv",header=TRUE)
View(file1)

cluster1 <- kmeans(file1[7:8], 4)
str(cluster1)

file1$Borough <- as.factor(cluster1$cluster)
str(cluster1)

head(cluster1$centers)

View(file1)

#------------------------------------- Clustering for Brooklyn  --------------------------------------#
file2 <- read.csv("2.csv",header=TRUE)
#View(file2)

cluster2 <- kmeans(file2[7:8], 4)
str(cluster2)

file2$Borough <- as.factor(cluster2$cluster)
str(cluster2)

head(cluster2$centers)

View(file2)

#------------------------------------- Clustering for Manhattan  -------------------------------------#
file3 <- read.csv("3.csv",header=TRUE)
#View(file3)

cluster3 <- kmeans(file3[7:8], 4)
str(cluster3)

file3$Borough <- as.factor(cluster3$cluster)
str(cluster3)

head(cluster3$centers)

View(file3)

#-------------------------------------- Clustering for Queens  --------------------------------------#
file4 <- read.csv("4.csv",header=TRUE)
#View(file4)

cluster4 <- kmeans(file4[7:8], 4)
str(cluster4)

file4$Borough <- as.factor(cluster4$cluster)
str(cluster4)

head(cluster4$centers)

View(file4)

#----------------------------------- Clustering for Staten Island  -----------------------------------#
file5 <- read.csv("5.csv",header=TRUE)
#View(file5)

cluster5 <- kmeans(file5[7:8], 4)
str(cluster5)                 

file5$Borough <- as.factor(cluster5$cluster)
str(cluster5)

head(cluster5$centers)

View(file5)

#----------------------------------- Binding  -----------------------------------#
clustering <- bind_rows(file1, file2, file3, file4, file5)
remove(clustering)
summary(clustering)
View(clustering)
write.csv(clustering, file = "clustering.csv")
read <- read.csv("clustering.csv",header=TRUE)

View(read)
