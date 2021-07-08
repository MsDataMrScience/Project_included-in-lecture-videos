#standard deviation and the median absolute deviation (MAD)
sd(heights$height)
mad(heights$height)
#In the previous exercises we saw that the mean and median are very similar and so are the standard deviation and MAD. 
#This is expected since the data is approximated by a normal distribution which has this property.
mean(heights$height)
median(heights$height)
#one mistake can have a substantial effect on the average and the standard 
#but the median and MAD are much more resistant to outliers. 
#For this reason we say that they are robust summaries.
library(tidyverse)
data("heights")
#compute average and standard deviation for males
s <- heights %>% filter (sex == "Male") %>% summarize(avg = mean(height), sd = sd(height))
#print s to view results of above code
s
s$avg
s$sd