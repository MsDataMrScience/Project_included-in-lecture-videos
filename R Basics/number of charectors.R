#The function "nchar" tells you how many characters long a character vector is.
new_names <- ifelse (nchar(murders$state) <8, murders$state, murders$abb
