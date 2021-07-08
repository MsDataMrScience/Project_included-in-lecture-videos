library(dplyr)
library(dslabs)
library(NHANES)
data(NHANES)

#average blood pressure for 20-29 year old females using Dot placeholder
NHANES %>%
  filter(Gender == "female", AgeDecade == " 20-29") %>%
  summarize(average = mean(BPSysAve, na.rm = TRUE),
            standard_deviation = sd(BPSysAve, na.rm = TRUE)) %>%
            .$average

#average blood pressure for 20-29 year old females in a data frame
NHANES %>%
  filter(Gender == "female", AgeDecade == " 20-29") %>%
  summarize(average = mean(BPSysAve, na.rm = TRUE),
            standard_deviation = sd(BPSysAve, na.rm = TRUE))

#Min and max BP for blood pressure for 20-29 year old females
NHANES %>%
  filter(Gender == "female", AgeDecade == " 20-29") %>%
  summarize(minbp = min(BPSysAve, na.rm = TRUE),
            maxbp = max(BPSysAve, na.rm = TRUE))

#using group_by function
#compute the average and standard deviation of systolic blood pressure for females 
#for each age group separately. 
NHANES %>%
  filter(Gender =="female") %>%
  group_by(AgeDecade) %>%
  summarise(average = mean(BPSysAve, na.rm = TRUE), st_dv = sd(BPSysAve, na.rm = TRUE))

#avg & st_dv of systolic bp for males
NHANES %>%
  filter(Gender =="male") %>%
  group_by(AgeDecade) %>%
  summarise(avg = mean(BPSysAve, na.rm = TRUE),
            st_dv = sd(BPSysAve, na.rm = TRUE))

# above code can only be written using group_by
NHANES %>%
  group_by(Gender, AgeDecade) %>%
  summarise(average = mean(BPSysAve, na.rm = TRUE), st_dv = sd(BPSysAve, na.rm = TRUE))

#explore differences in systolic blood pressure across races, as reported in the Race1 variable
#for some reason code doesn't work in Rstudio but runs in console of datacamp
NHANES %>%
  filter(Gender == "male", AgeDecade == " 40-49")
  group_by(Race1) %>%
  summarise(average = mean(BPSysAve, na.rm = TRUE), st_dv = sd(BPSysAve, na.rm = TRUE)) %>%
  arrange(average)
