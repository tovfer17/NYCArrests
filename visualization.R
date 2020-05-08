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


#--------------------------------- Other Graphs for Association Rules ---------------------------------#
#Plotting the apriori algorithm results
plot(ruleSet1, interactive = TRUE)
plot(ruleSet1, method = "two-key plot", interactive = TRUE)
head(quality(ruleSet1))

#New Graph
top10subrules <- head(ruleSet1, n = 10, by = "confidence")
plot (top10subrules, method = "graph", engine = "htmlwidget")

plot(top10subrules, interactive = TRUE)







#Matrix Visuals        
subrules <- ruleSet1[quality(ruleSet1)$confidence > 0.4]
subrules
plot(subrules, method = "matrix", measure = "confidence", interactive = TRUE)



#Grouped Visuals
subrules2 <- head(ruleSet1, n = 10, by = "confidence")
subrules2
plot(subrules2, method = "grouped", interactive = TRUE)



install.packages("ggmap")
library(ggmap)

?register_google

NYCMap <- get_map("Bronx", zoom = 10)
ggmap(NYCMap) + geom_point(aes(x = Longitude[], y = Latitude[], colour = as.factor(cluster1$centers)),data = file1) +
  ggtitle("Bronx using KMean")
