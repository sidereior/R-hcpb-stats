library(tidyverse)
data <- read.csv("data.csv", header=TRUE)
v1 <- data$undergrads
sum <- 0
for(item in data$undergrads){
    sum <- sum + item
}
mean <- sum/length(v1)
topstdev <- 0
for(item in data$undergrads){
    topstdev = (item - mean)*(item - mean)
}
topstdev = topstdev/length(v1)
topstdev = sqrt(topstdev)
print(topstdev)
parts <- c(0, 100000, 200000, 300000, 400000, 500000, 600000, 700000, 800000, 900000, 1000000, 1100000,1200000,1300000,1400000,1500000,1600000,1700000,1800000,1900000,2000000,2100000,2200000)
hist(v1, xlim = c(0, 2200000), ylim = c(0, 13), main="Undergraduates in Each State", xlab="Undergrads", ylab="Frequency",breaks=parts,col=4,border="gray",labels=TRUE)