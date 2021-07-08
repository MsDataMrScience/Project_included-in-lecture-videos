# The type of data we are working with will often influence the data visualization technique we use. 
#We will be working with two types of variables: categorical and numeric. 
#Each can be divided into two other groups: categorical can be ordinal or not,
#whereas numerical variables can be discrete or continuous.


#finding unique values in a data set
unique(heights$height)
x <- heights$height
unique(x)
length(unique(x))
y <- table(x)
sum(y == 1)

