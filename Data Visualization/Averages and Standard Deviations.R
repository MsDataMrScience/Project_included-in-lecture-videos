#Suppose you only have avg and stdev below, but no access to x, 
#can you approximate the proportion of the data that is between 69 and 72 inches?
pnorm(72, avg, stdev)
#Notice that this is the Cummulative Distribution Function (CDF) for the normal distribution.
# for more help
?pnorm
library(dslabs)
data(heights)
x <- heights$height[heights$sex=="Male"]
avg <- mean(x)
stdev <- sd(x)
a <- pnorm(72, avg, stdev)
b <- pnorm(69, avg, stdev)
a - b

#with actual data we can do it following way
x <- heights$height[heights$sex == "Male"]
mean(x > 69 & x <= 72)

#notice results of line 14 & 18 are so similar!
# learn to play with data.class
#we always dont have to know the entire data, for a normal distribution(which is very popularly treu) just
#knowing Mean and std deviation can give plenty of info regarding the data

