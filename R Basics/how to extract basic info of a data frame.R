#install packages (name of package) will install
# that package
#data frame means a huge table containing 
#rows  (observations) and columns (variables)
#function called "str" offers info related to # 
# of variables and observations.
#The function names() is specifically designed 
#to extract the column names from a data frame.
#The function class() can be used to determine 
#the class of an object.e.g.character, numeric or logical.
#The function levels shows us the categories 
#for the factor.
#nlevels --to determine number of categories under one
#variable
#To extract variables from a data frame we 
#use $, referred to as the accessor.
install.packages(dslabs)
library(dslabs)
data(movielens)
str(movielens)
type(muvielens$title)
class(movielens$title)
class(movielens$genres)
levels(movielens$genres)
nlevels(movielens$genres)
length(movielens$genres)
