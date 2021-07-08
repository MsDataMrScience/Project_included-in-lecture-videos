# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total/murders$population*100000

# Store the murder_rate < 1 in low 
low <- murder_rate < 1

# Get the indices of entries that are below 1
which(low)
murders$state[low]
murder_rate[low]
my_df <- data.frame(names = murders$state[low], low =low)