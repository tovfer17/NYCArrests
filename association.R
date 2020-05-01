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

#Display 
options(max.print = .Machine$integer.max)

#Run the apriori algorithm for first analysis
analysis1 <- apriori(dataset1, parameter = list(support = 0.01, confidence = 0.4, target = "rules"))
#Get the performance summary and number of rules
summary(analysis1)
#Inspect the rules produced by the algorithm
inspect(head(rules, 721))
#Write out the first analysis file
write(rules, file = "Analysis1.csv")

#Run the apriori algorithm for second analysis
analysis2 <- apriori(dataset1, parameter = list(support = 0.001, confidence = 0.3, target = "rules"))
#Get the performance summary and number of rules
summary(analysis2)
#Inspect the rules produced by the algorithm
inspect(head(rules, 8833))
#Write out the second analysis file
write(rules, file = "Analysis2.csv")

#Run the apriori algorithm for third analysis
analysis3 <- apriori(dataset1, parameter = list(support = 0.002, confidence = 0.5, target = "rules"))
#Get the performance summary and number of rules
summary(analysis3)
#Inspect the rules produced by the algorithm
inspect(head(rules, 3082))
#Write out the third analysis file
write(rules, file = "Analysis3.csv")


######## ADD TO NEW FILE ########
#Plotting the apriori algorithm results
plot(rules)
plot(rules,method="Graph")
plot(rules, method = "two-key plot")






