#Plotting the apriori algorithm results
plot(analysis1)
plot(analysis1,method="Graph")
plot(analysis1, method = "two-key plot")
head(quality(analysis1))

#One way to Plot         
subrules <- removeRedundant[quality(removeRedundant)$confidence > 0.4]
subrules
plot(subrules, method = "matrix", measure = "confidence", interactive = TRUE)

#Another way to Plot
subrules2 <- head(analysis1, n = 235, by = "confidence")
subrules2
plot(subrules2, method = "grouped", interactive = TRUE)
