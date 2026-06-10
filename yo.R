v <- c(paste("File", 1:3, ".txt", sep=""))
v[1]

vector <- seq(1:9)
vector[vector>=7]

y <- c(8,3,5,7,6,6,8,9,2)
all(y<5)
z <- y[y<5]

opt <- c(T, F)
1*opt

loci.vect <- c(rep(T, 3))
loci.vect * runif(3)


set.seed(123)
x <-sample(10) < 4
which(x)


y <- c(9,2,3,9,4,10,4,11)
total_sum <- sum(sort(y, decreasing=T)[1:3])

x<-1:4
x[c(T, T, NA, F)]

#----------------------------------
m <- matrix(1:9, nrow=3, byrow = T)
m
m[2,3]
m[,2]
m[1,]
rownames(m) <- c("A", "B", "C")
colnames(m) <- c("A", "B", "C")
m


a.x <- array(1:30, dim = c(5,3,2))
a.x



numer <- 1:3
str <- "Scemo"
m <- matrix(1:4, nrow=2)

list.of.three <- list(numerical = numer, string = str, matrix = m)
list.of.three[[1]]
list.of.three$matrix
list.of.three[["matrix"]]

list.of.three[["forth"]] = 1:4
list.of.three

list.of.all <- c(list.of.three, list(numeri = 1:5))
list.of.all


country <- c("Italia", "Italia", "Italia", "Germania", "Germania", "Germania", "Francia", "Francia")
country.factor <- factor(country, levels = c("Italia", "Germania", "Francia"), labels = c("IT", "GER", "FR"))
country.factor

cbind(country, country.factor)

