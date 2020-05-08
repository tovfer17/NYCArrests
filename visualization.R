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
itemFrequencyPlot(items(ruleSet1),topN=29,type="absolute",col=brewer.pal(8,'Pastel2'), main="Absolute Item Freq Ruleset1")
sitemFrequencyPlot(items(ruleSet2),topN=29,type="absolute",col=brewer.pal(8,'Pastel2'), main="Absolute Item Freq Ruleset2")
itemFrequencyPlot(items(ruleSet3),topN=29,type="absolute",col=brewer.pal(8,'Pastel2'), main="Absolute Item Freq Ruleset3")


#---------------------------------  Graphs for Association Rules ruleset1 ---------------------------------#
#filter just 10 rules to use for all plots 
top10subrules1 <- head(ruleSet1, n = 10, by = "confidence")
#Plotting the apriori algorithm results with interactive scatter plot 
plotly_arules(top10subrules1)
#graphvisual
plot (top10subrules1, method = "graph", engine = "htmlwidget")


#---------------------------------  Graphs for Association Rules ruleset2 ---------------------------------#
#filter just 10 rules to use for all plots 
top10subrules2 <- head(ruleSet2, n = 10, by = "confidence")
#Plotting the apriori algorithm results with interactive scatter plot 
plotly_arules(top10subrules2)
#graphvisual
plot (top10subrules2, method = "graph", engine = "htmlwidget")


#---------------------------------  Graphs for Association Rules ruleset3 ---------------------------------#
#filter just 10 rules to use for all plots 
top10subrules3 <- head(ruleSet3, n = 10, by = "confidence")
#Plotting the apriori algorithm results with interactive scatter plot 
plotly_arules(top10subrules3)
#graphvisual
plot (top10subrules3, method = "graph", engine = "htmlwidget")


#---------------------------------  visualization setup ---------------------------------#
#install and load packages
install.packages("ggmap")
library(ggmap)
library(devtools)
if(!requireNamespace("devtools")) install.packages("devtools")
devtools::install_github("dkahle/ggmap", ref = "tidyup")

#register api key 
register_google(key = "AIzaSyApGtiBg3SsVa8-zhgrJNi4nQZSAbTsIUU")
#show api
ggmap_show_api_key()
# check if key is saved
showing_key()

#---------------------------------  visualization for Bronx---------------------------------#
#get the bronx map 
NYCMap <- get_map("Bronx", zoom = 13)

#show the clusters on the bronx map 
ggmap(NYCMap) + geom_point(aes(x = Longitude[], y = Latitude[], colour = as.factor(Direction)),data = file1) +
  ggtitle("Bronx Clusters using KMean")


#---------------------------------  visualization for Brooklyn---------------------------------#

#get the bronx map 
NYCMap <- get_map("Brooklyn", zoom = 12)

#show the clusters on the bronx map 
ggmap(NYCMap) + geom_point(aes(x = Longitude[], y = Latitude[], colour = as.factor(Direction)),data = file2) +
  ggtitle("Brooklyn Clusters using KMean")


#---------------------------------  visualization for Manhattan---------------------------------#

#get the bronx map 
NYCMap <- get_map("Manhattan", zoom = 12)

#show the clusters on the bronx map 
ggmap(NYCMap) + geom_point(aes(x = Longitude[], y = Latitude[], colour = as.factor(Direction)),data = file3) +
  ggtitle("Manhattan Clusters using KMean")

#---------------------------------  visualization for Queens---------------------------------#

#get the bronx map 
NYCMap <- get_map("Queens", zoom = 14)

#show the clusters on the bronx map 
ggmap(NYCMap) + geom_point(aes(x = Longitude[], y = Latitude[], colour = as.factor(Direction)),data = file4) +
  ggtitle("Queens Clusters using KMean")


#---------------------------------  visualization for Staten Island---------------------------------#

#get the bronx map 
NYCMap <- get_map("Staten Island", zoom = 12)

#show the clusters on the bronx map 
ggmap(NYCMap) + geom_point(aes(x = Longitude[], y = Latitude[], colour = as.factor(Direction)),data = file5) +
  ggtitle("Staten Island Clusters using KMean")

