#figure out states in West coast & murder_rate utmost (<=)1
install.packages(dslabs)
library(dslabs)
data(murders)
str(murders)
nlevels(murders$region)
levels(murders$region)
west <- murders$region == "West"
safe <- murder_rate <= 1
index <- safe & west
murders$state[index]
sum(index)

#to figure out states with murder_rate <= 0.71
murder_rate <- murders$total/murders$population*100000
#we can use logical operators to vectors
index <- murder_rate <= 0.71
murders$state[index]
#true  entry becomes 1 & false becomes 0 
#logical vector gets coereced with numeric
sum(index)
