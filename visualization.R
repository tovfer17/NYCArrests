#---------------------------------------- Set working directory ----------------------------------------#
setwd('/Users/fer/Documents/RStudioFiles/NYCArrests')
#setwd('/Users/arpit/Documents/Data Mining Project')
#setwd('/Users/nehabala/Desktop/Data Mining Project')
#--------------------------------- Install Packages & Load Libraries ----------------------------------#
#Install the packages needed for association rule mining
install.packages("arulesViz")
install.packages("arules")
#Load the required packages for association rule mining
library(arulesViz)
library(arules)

#---------------------------------Graphs for Association Rules ---------------------------------#
# Filter rules with confidence greater than 0.4 or 40%
subRules<-association.rules[quality(association.rules)$confidence>0.4]
#Plot SubRules
plot(subRules)


#Plotting the apriori algorithm results
plot(ruleSet1)
plot(ruleSet1,method="Graph")
plot(ruleSet1, method = "two-key plot")
head(quality(ruleSet1))

#Matrix Visuals        
subrules <- removeRedundant[quality(removeRedundant)$confidence > 0.4]
subrules
plot(subrules, method = "matrix", measure = "confidence", interactive = TRUE)

#Grouped Visuals
subrules2 <- head(ruleSet1, n = 235, by = "confidence")
subrules2
plot(subrules2, method = "grouped", interactive = TRUE)

#---------------------------------- Bar Graph for Association Rules -----------------------------------#
#Bar Grap Visuals
if (!require("RColorBrewer")) {
  #Install the color package for R
  install.packages("RColorBrewer")
  #Load the required package RColorBrewer
  library(RColorBrewer)
}

#Output the graph for each analysis
itemFrequencyPlot(items(ruleSet1),topN=29,type="absolute",col=brewer.pal(8,'Pastel2'), main="Absolute Item Frequency Plot")
itemFrequencyPlot(items(ruleSet2),topN=29,type="absolute",col=brewer.pal(8,'Pastel2'), main="Absolute Item Frequency Plot")
itemFrequencyPlot(items(ruleSet3),topN=29,type="absolute",col=brewer.pal(8,'Pastel2'), main="Absolute Item Frequency Plot")


