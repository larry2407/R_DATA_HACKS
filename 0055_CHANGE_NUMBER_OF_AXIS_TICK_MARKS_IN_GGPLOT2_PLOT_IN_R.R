source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # source block to be used for updating the lessons list
# Change Number of Axis Tick Marks in ggplot2 Plot in R

# In this tutorial you’ll learn how to adjust the number of axis ticks in a graphic in the R programming language.

# Setting up the Example
# Loading example data set
head(iris)

my_plot <- ggplot(iris,        # Drawing plot with default axis tick marks
                  aes(x = Sepal.Length,
                      y = Sepal.Width)) +
  geom_point()
my_plot

# Change Number of Axis Tick Marks in ggplot2 Plot
my_plot + scale_x_continuous(breaks = seq(4, 8, by = .5)) # Change number of x-axis tick marks
my_plot + scale_y_continuous(breaks = seq(2, 5, by = .5)) # Change number of y-axis tick marks

# Summary: This tutorial explained how to adjust the number of axis tick marks in a ggplot2 plot in the R programming language. If you have any further questions, please let me know in the comments section.

# Example: Increasing the Number of Axis Tick Marks in a ggplot2 Graphic
my_plot +                      # Changing number of axis tick marks
  scale_y_continuous(breaks = scales::pretty_breaks(n = 15)) +
  scale_x_continuous(breaks = scales::pretty_breaks(n = 10))

# Further Resources
# You may find some related R tutorials in the following list:
   
# How to Increase / Decrease the Plot Legend Size
# Using Real Values as Axis Ticks of Plot
# Increase or Decrease ggplot2 Point Border Thickness
# Increase & Decrease Font Size of Correlation Coefficients in corrplot

search_lessons("Increase") %>% view()
search_lessons("Decrease") %>% view()
search_lessons("Legend") %>% view()
search_lessons("Real") %>% view()
search_lessons("Border") %>% view()
search_lessons("Font") %>% view()
search_lessons("Correlation") %>% view()
search_lessons("Coefficient") %>% view()
search_lessons("corrplot") %>% view()
