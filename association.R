#Install the packages needed for association rule mining
install.packages("arules")
install.packages("arulesViz")

#Load the required packages for association rule mining
library(arules)
library(arulesViz)

#Run the apriori algorithm
?apriori

#Display 
options(max.print = .Machine$integer.max)

#Run the apriori algorithm for first analysis
analysis1 <- apriori(dataset1, parameter = list(support = 0.01, confidence = 0.4))
#Get the performance summary and number of rules
summary(analysis1)
#Remove Redundant Rules
removeRedundant <- analysis1[!is.redundant(analysis1)]
summary(removeRedundant)
#Inspect the rules produced by the algorithm
inspect(head(removeRedundant, 235))

################ IGNORE FOR NOW #################### 

#Run the apriori algorithm for second analysis
analysis2 <- apriori(dataset1, parameter = list(support = 0.001, confidence = 0.3, target = "rules"))
#Get the performance summary and number of rules
summary(analysis2)
#Inspect the rules produced by the algorithm
inspect(head(analysis2, 8833))
#Write out the second analysis file
write(analysis2, file = "Analysis2.csv")

#Run the apriori algorithm for third analysis
analysis3 <- apriori(dataset1, parameter = list(support = 0.002, confidence = 0.5, target = "rules"))
#Get the performance summary and number of rules
summary(analysis3)
#Inspect the rules produced by the algorithm
inspect(head(analysis3, 3082))
#Write out the third analysis file
write(analysis3, file = "Analysis3.csv")
