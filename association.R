#Install the packages needed for association rule mining
install.packages("arules")
install.packages("arulesViz")

#Load the required packages for association rule mining
library(arules)
library(arulesViz)

#Read and call preprocessed data
preprocessed <- read.csv("preprocessing.csv",header=TRUE)
View(preprocessed)

#Run the apriori algorithm
?apriori
rules <- apriori(preprocessed, parameter = list(support = 0.001, confidence = 0.8, target = "rules"))

#Get the performance summary and number of rules
summary(rules)

#Inspect the rules produced by the algorithm
inspect(head(rules, 421))