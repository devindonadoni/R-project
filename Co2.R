#CO2 DATASET

data(CO2)
str(CO2)

CO2

co2mutate <- mutate(CO2,
                    conc.scale = (conc - mean(conc)) / sd(conc),
                    uptake = uptake - mean(uptake))

summary(co2mutate$uptake)

#GESTIONE NA
colSums(is.na(CO2))     #---- df.isna().sum()
colMeans(is.na(CO2))    

sum(complete.cases(CO2))   #righe senza NA


co2Trasmutated <- transmute(CO2, conc = conc-mean(conc), uptake = uptake - mean(uptake))
