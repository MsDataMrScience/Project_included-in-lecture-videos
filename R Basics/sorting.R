z <- c(4,15,31,92,65)
sort(z)
#index needed to order sorted vector
#function order gives positions of numbers in original vector
order(z)
#ranks of original vectors
rank(z)
#murders data
sort(murders$total)
index <- order(murders$total)
#max murders
max(murders$total)
i_max <- which.max (murders$total)
i_max
murders$state[i_max]
#min murders
min(murders$totals)
i_min <- which.min(murders$total)
i_min
murders$state[i_min]
rank(murders$totals)
