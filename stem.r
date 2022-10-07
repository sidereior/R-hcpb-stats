library(tidyverse)
data <- read.csv("data.csv", header=TRUE)
v1 <- data$collegerate
stem(v1)