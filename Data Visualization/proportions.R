#What proportion of the data is between 69 and 72 inches 
#(taller than 69 but shorter or equal to 72)? A proportion is between 0 and 1.

#Use the mean function in your code. 
#Remember that you can use mean to compute the proportion of entries of a logical vector that are TRUE.

library(dslabs)
data(heights)
x <- heights$height[heights$sex == "Male"]
mean(x > 69 & x <= 72)
