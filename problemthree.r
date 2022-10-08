library(tidyverse)
v1 <- c(47, 52, 44, 51, 34, 47, 62, 42, 56, 46, 53, 53, 42, 44, 50, 54, 46, 41, 48)
stem(v1)
highone<-(mean(v1)+sd(v1))
lowone<-(mean(v1)-sd(v1))
hightwo<-(mean(v1)+2*sd(v1))
lowtwo<-(mean(v1)-2*sd(v1))
lowthree<-(mean(v1)-3*sd(v1))
highthree<-(mean(v1)+3*sd(v1))
print(highone)
print(lowone)
print(hightwo)
print(lowtwo)
print(lowthree)
print(highthree)
count1 <- 0
for(item in v1){
    if(item > lowone && item < highone){
        count1 <- count1 + 1
    }
}
print(count1/length(v1))
count2 <- 0
for(item in v1){
    if(item > lowtwo && item < hightwo){
        count2 <- count2 + 1
    }
}
print(count2/length(v1))
count3 <- 0
for(item in v1){
    if(item > lowthree && item < highthree){
        count3 <- count3 + 1
    }
}
print(count3/length(v1))