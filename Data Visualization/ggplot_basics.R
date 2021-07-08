libray(dplyr)
libray(dslabs)
#grammer of graphics = ggplot
library(ggplot2)
data(murders)
#With ggplot2 plots can be saved as objects.
p <- ggplot(data = murders)
#Because data is the first argument we don't need to spell it out.
p <- ggplot(murders)
#or, if we load dplyr, we can use the pipe
p <- murders %>% ggplot()
# Remember the pipe sends the object on the left of %>% to be the 
#first argument for the function the right of %>%.
class(p)
#black slate plot if we print just p
p
#To create a scatter plot, we add a layer with the function geom_point. The aesthetic mappings 
#require us to define the x-axis and y-axis variables respectively.
murders %>% ggplot(aes(x = population, y = total)) +
  geom_point()
#You can also add labels to the points on a plot.
murders %>% ggplot(aes(population, total, label = abb)) +
  geom_label()
#changing color of labels
murders %>% ggplot(aes(population, total, label = abb)) +
  geom_label(color = "purple", size = 4)
#label colors representing regions
murders %>% ggplot(aes(population, total, label = abb, color = region,size = 3)) +
  geom_label()
#log-scale
# change the axes to log scales to account for the fact that the population distribution is skewed.
p <- murders %>% ggplot(aes(population, total, label = abb, color = region)) + 
  geom_label()
p + scale_x_log10() + scale_y_log10()
#plot titles, x axis & y-axis titles-- 
p <- murders %>% ggplot(aes(population, total, label = abb, color = region)) +
  geom_label()
p + scale_x_log10() + 
  scale_y_log10() +
  xlab("Population in millions (log scale)") +
  ylab("Total number of murders (log scale)")
  ggtitle("Gun murder data")
