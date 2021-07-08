a <- 0
#ifelse-- contains a logical argument and its two possible solutions:True & False; 
#e.g. a is >0 get reciprocal, else get NA implying "missing data"
ifelse (a>0, 1/a, NA)
a <- c(0,1,2,-4,5)
ifelse (a>0, 1/a, NA)

# the ifelse() function is also helpful for 
#replacing missing values
data("na_example")
#how many NAs are in this data table?
#use is.na to find out number of NAs.
sum(is.na(na_example))
#define object no_nas, replace No NAs with zero using ifelse function
no_nas <- ifelse (is.na(na_example), 0, na_example)
sum(is.na(na_example))
#note sum of no_nas is =zero
sum(is.na(no_nas))
