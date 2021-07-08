library(tidyverse)
library(dslabs)
data(heights)
data(murders)
# compute separate average and standard deviation for male/female heights
heights %>% 
  group_by(sex) %>%
  summarize(avg = mean(height), s_d = sd(height))
# compute median murder rate in 4 regions of country
#1- add column (murder_rate) to original murders data frame
murders <- murders %>% mutate(murder_rate = total/population * 100000)
#2- use group_by function and then summarize
murders %>%
  group_by(region) %>%
  summarize(median_murder_rate = median(murder_rate))
