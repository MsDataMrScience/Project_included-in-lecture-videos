library(dslabs)
data(na_example)
mean(na_example)
sd(na_example)

#To ignore the NAs, we can use the na.rm argument:
mean(na_example, na.rm = TRUE)
sd(na_example, na.rm = TRUE)