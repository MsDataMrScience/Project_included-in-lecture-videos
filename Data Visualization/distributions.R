library(dslabs)
data(heights)
#function to get variable names
names(heights)
#funtion to get firsst 6 observations of a given data frame
head(heights)
# number of unique values are used by the heights variable
unique(heights$height)
# to determine how many unique heights were reported
length(unique(heights$height))
# function table to compute the frequencies of each unique height value
table(heights$height)
#number of times value only appears once in above table. Use logical operator.
tab <- table(heights$height)
tab == 1
sum(tab == 1)
rank(heights$height)
#way to find out how many elements of your dataframe satisfy a perticular condition
length(which(heights$sex=="Female"))
#General table
table(heights$sex)
#proportion table
prop.table(table(heights$sex))
