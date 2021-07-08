heights %>% 
  ggplot(aes(height)) +
  geom_density(fill = "blue")
#two smooth density plots
heights %>% 
  ggplot(aes(height, group = sex)) + 
  geom_density()
# diff colors for sexes

#ggplot knows you want a different color for each sex. So two densities must be drawn. 
#You can therefore skip the group = sex mapping. Using color has the added benefit that 
#it uses color to distinguish the groups.
heights %>% 
  ggplot(aes(height, color = sex)) + 
  geom_density()
#We can also assign groups using the fill argument. When using the geom_density geometry, 
#color creates a colored line for the smooth density plot while fill colors in the area under the curve.

#However, here the second density is drawn over the other. 
#We can change this by using something called alpha blending.
heights %>% ggplot(aes(height, fill = sex)) +
  geom_density(alpha = 0.2)
  ggtitle("density")
