#Visuals File 5
library(arulesViz)
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


#---------------------------------  Graphs for Association Rules ruleset1 ---------------------------------#
#filter just 10 rules
top10subrules1 <- head(ruleSet1, n = 10, by = "confidence")
#Plotting the apriori algorithm results
plot(top10subrules1, interactive = TRUE)
plot(top10subrules1, method = "two-key plot", interactive = TRUE)

#graphvisual
plot (top10subrules, method = "graph", engine = "htmlwidget")



#---------------------------------  Graphs for Association Rules ruleset2 ---------------------------------#
#filter just 10 rules
top10subrules2 <- head(ruleSet2, n = 10, by = "confidence")
#Plotting the apriori algorithm results
plot(top10subrules2, interactive = TRUE)
plot(top10subrules2, method = "two-key plot", interactive = TRUE)

#graphvisual
plot (top10subrules2, method = "graph", engine = "htmlwidget")


#---------------------------------  Graphs for Association Rules ruleset3 ---------------------------------#
#filter just 10 rules
top10subrules3 <- head(ruleSet3, n = 10, by = "confidence")
#Plotting the apriori algorithm results
plot(top10subrules3, interactive = TRUE)
plot(top10subrules3, method = "two-key plot", interactive = TRUE)

#graphvisual
plot (top10subrules3, method = "graph", engine = "htmlwidget")



#---------------------------------  visualization for each q---------------------------------#
