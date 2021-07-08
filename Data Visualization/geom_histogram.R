library(dplyr)
library(ggplot2)
library(dslabs)
data("heights")
p <- heights %>% ggplot(aes(height))
  p + geom_histogram(binwidth = 1, fill = "blue", color = "black") +
    xlab("Heights in inches") +
    ggtitle("Histogram")
  