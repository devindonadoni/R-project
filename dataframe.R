country <- c("Italia", "Germania", "Francia", "Germania", "Germania", "Germania",
             "Francia", "Italia", "Italia", "Francia")
countryf <- factor(country)
age      <- c(47, 44, 44, 40, 38, 36, 42, 34, 34, 44)
gender   <- c(1, 1, 2, 1, 1, 2, 1, 2, 2, 2)
genderf  <- factor(gender)
levels(genderf) <- c("F", "M")

dat <- data.frame(Country = countryf, Age = age, Sex = genderf, Under40 = age<40)
#View(dat) apre pagina per visualizzazione

dat[,'Age']

#1
x <- runif(8)
y <- letters[1:8]
z <- sample(c(rep(T, 5), rep(F,3)))

newdf <- data.frame(x = x, y = y, z = z)
str(newdf)
is.data.frame(newdf)

newdf.2 <- data.frame(nome = c("Devin", "Ron", "Rug", "Edo", "Frat"), eta = c(sample(19:30, size=5)) )
newdf.2
newdf.2[newdf.2[, 2] > 25, ]
newdf.2[newdf.2$eta>25, ]
newdf.2["voto"] <- c(sample(18:30, size= 5))

install.packages("dplyr")
library(dplyr)

filter(newdf.2, eta>25)
filter(newdf.2, eta>25, voto>20)
subset(newdf.2, eta>25 & voto >20)

select(newdf.2, eta, voto)
newdf.2 |> select(eta, voto)

mutate(newdf.2,  voto_norm = voto/30)
newdf.2 |> mutate(voto_norm = voto/22)

rename(newdf.2, valutazione = voto)
newdf.2 |> rename(valutazione = voto)

arrange(newdf.2, desc(voto))
newdf.2 |> arrange(eta)

newdf.2["corso"] <- c("AIDA", "CHI", "ING", "ING", "AIDA" )
#R normale
#aggregate(voto ~ corso, data=newdf.2, FUN=mean)

newdf.2 |> 
  group_by(corso) |> 
  summarize(
    media_voto = mean(voto),
    n = n()
    )

