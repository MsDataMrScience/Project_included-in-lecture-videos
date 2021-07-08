#A vector is a series of values, all of the same type. 
#They are the most basic data type in R and can hold 
#numeric data, character data, or logical data. 
#In R, you can create a vector with the concatenate (or combine) function c()

codes <- c(380, 124, 818)
country <- c("italy", "canada", "egypt")
#this can also b stated in a following way
codes <- c(italy = 380, canada = 124, egypt = 818)
#subsetting
#use []to access elements of vector
codes[2]
codes[1:2]
codes["canada"]
codes[c( "italy" , "egypt")]


#function seq creates sequences.(seq of gap of 1)
seq(1,10)
#to have odd integers(seq of defined  gap of 2)
seq(1,10,2)

# to get consecutive integers
1:10
