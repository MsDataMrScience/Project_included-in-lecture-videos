#general form
if(booleancondition){
  print-----
} else {
  print (alternative expression)
}
#e.g.--
a <- 0
if(a!=0){
  priny(1/a)
} else{
  print("No reciprocal for 0")
}

# an example that tells us which states, if any, 
#have a murder rate less than 0.5
library(dslabs)
data(murders)
murder_rate <- murders$total/murders$population*100000
ind <- which.min(murder_rate)
if(murder_rate[ind] < 0.5){
  print(murders$state[ind])
} else{
  print("No state with that low murder rate.")
}
# an example that tells us which states, if any, 
#have a murder rate less than 0.25
if(murder_rate[ind]<0.25){
  print(murders$state[ind])
} else {
  print("no state with that low murder rate")
}
