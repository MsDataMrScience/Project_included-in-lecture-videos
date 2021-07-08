#  approximation is not always useful. An example is for the more extreme values, 
#often called the "tails" of the distribution.
# use pnorm to calculate the proportion >= 7 feet (7*12 inches)
avg = 69 
stdev = 3 
seven_footers <- pnorm(84, avg, stdev)
seven_footers
# proportion of adult men that are taller than 7 feet
1 - seven_footers
#Estimating the number seven footers
seven_footers <- pnorm(84, avg, stdev)
p <- 1 - seven_footers
# We know that there are about 1 billion men between the ages of 18 and 40 in the world, the age range for the NBA
round(p * 10^9)