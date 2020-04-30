#Install the packages needed for association rule mining
install.packages("arules")
install.packages("arulesViz")

#Load the required packages for association rule mining
library(arules)
library(arulesViz)

#Read and call preprocessed data
readPreprocess <- read.csv("preprocessed.csv",header=TRUE)
View(readPreprocess)
str(readPreprocess)

dataset1 <- readPreprocess
str(dataset1)

#Char to Factor
dataset1$PD_DESC <- as.factor(dataset1$PD_DESC)
dataset1$ARREST_BORO <- as.factor(dataset1$ARREST_BORO)
dataset1$AGE_GROUP <- as.factor(dataset1$AGE_GROUP)
dataset1$PERP_SEX <- as.factor(dataset1$PERP_SEX)
dataset1$PERP_RACE <- as.factor(dataset1$PERP_RACE)
dataset1$Month <- as.factor(dataset1$Month)

str(dataset1)

#Run the apriori algorithm
?apriori
rules <- apriori(dataset1, parameter = list(support = 0.001, confidence = 0.9, target = "rules"))

#Get the performance summary and number of rules
summary(rules)

#Inspect the rules produced by the algorithm
#Entering the number of rules you would like to view or analyze
inspect(head(rules, 60))

#Plotting the apriori algorithm results
plot(rules)
plot(rules,method="Graph")
plot(rules, method = "two-key plot")