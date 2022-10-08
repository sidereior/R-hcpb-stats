library(tidyverse)
data <- read.csv("data.csv", header=TRUE)
v1 <- data$collegerate
sum <- 0
for(item in data$collegerate){
    sum <- sum + item
}
mean <- sum/length(v1)
topstdev <- 0
for(item in data$collegerate){
    topstdev = (item - mean)*(item - mean)
}
topstdev = topstdev/length(v1)
topstdev = sqrt(topstdev)
print(topstdev)
print(sqrt((length(v1)-1)/length(v1)) * sd(data$collegerate))
parts <- c(35,40,45,50,55,60,65,70,75,80)
hist(v1, main="Undergraduates in Each State per 1000 population", xlab="Undergrads per 1000 population", ylab="Frequency",breaks=parts,col=4,border="gray",labels=TRUE)
print(IQR(v1))
print(quantile(v1))