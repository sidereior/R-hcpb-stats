library(tidyverse)
data <- read.csv("data.csv", header=TRUE)
v1 <- data$collegerate
parts <- c(35,40,45,50,55,60,65,70,75,80)
hist(v1, main="Undergraduates in Each State", xlab="Undergrads", ylab="1000 Population",breaks=parts,col=4,border="gray",labels=TRUE)