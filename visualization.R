#---------------------------------- Bar Graph for Association Rules -----------------------------------#
#Bar Grap Visuals
if (!require("RColorBrewer")) {
  #Install the color package for R
  install.packages("RColorBrewer")
  #Load the required package RColorBrewer
  library(RColorBrewer)
}

#Output the graph for each analysis
itemFrequencyPlot(items(analysis1),topN=29,type="absolute",col=brewer.pal(8,'Pastel2'), main="Absolute Item Frequency Plot")
itemFrequencyPlot(items(analysis2),topN=29,type="absolute",col=brewer.pal(8,'Pastel2'), main="Absolute Item Frequency Plot")
itemFrequencyPlot(items(analysis3),topN=29,type="absolute",col=brewer.pal(8,'Pastel2'), main="Absolute Item Frequency Plot")


#--------------------------------- Other Graphs for Association Rules ---------------------------------#
#Plotting the apriori algorithm results
plot(analysis1)
plot(analysis1,method="Graph")
plot(analysis1, method = "two-key plot")
head(quality(analysis1))

#Matrix Visuals        
subrules <- removeRedundant[quality(removeRedundant)$confidence > 0.4]
subrules
plot(subrules, method = "matrix", measure = "confidence", interactive = TRUE)

#Grouped Visuals
subrules2 <- head(analysis1, n = 235, by = "confidence")
subrules2
plot(subrules2, method = "grouped", interactive = TRUE)
