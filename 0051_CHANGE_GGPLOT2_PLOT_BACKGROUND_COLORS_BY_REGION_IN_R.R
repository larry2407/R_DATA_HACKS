source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Change ggplot2 Plot Background Colors by Region in R --------------------

# In this R tutorial you’ll learn how to create a ggplot2 plot with different background colors.

# Preparing the Example
head(iris)                              # Load example data

ggplot(iris,                            # Create ggplot2 plot without colors
       aes(x = Sepal.Width,
           y = Sepal.Length)) +
  geom_line()

# Example: Draw ggplot2 Graphic with Multiple Background Colors
iris_colors <- data.frame(min = 1:3,    # Create data with breaks
                          max = 2:4,
                          fillings = letters[1:3])
iris_colors

ggplot() +                              # ggplot2 graphic with background colors
  geom_rect(data = iris_colors,
            aes(xmin = min,
                xmax = max,
                ymin = - Inf,
                ymax = Inf,
                fill = fillings),
            alpha = 0.3) +
  geom_point(data = iris,
             aes(x = Sepal.Width,
                 y = Sepal.Length))

# ggplot2 graphic with background colors
ggplot() +                              # ggplot2 graphic with background colors
  geom_rect(data = iris_colors,
            aes(xmin = min,
                xmax = max,
                ymin = - Inf,
                ymax = Inf,
                fill = fillings),
            alpha = 0.3) +
  geom_point(data = iris,
             aes(x = Sepal.Width,
                 y = Sepal.Length)) +
  theme(panel.background = element_rect(fill = "gray90"))

# Summary: This tutorial illustrated how to create a ggplot2 plot with different background colors in the R programming language. If you have any further questions, please let me know in the comments section.

# Further Resources
# In the following, you may find some additional resources on topics such as plot legends, variables, graphics in R, and ggplot2:
#   
#   Draw Plot Legend with White Border & Background
# Draw Table within ggplot2 Plot Area
# How to Draw All Variables of a Data Frame in a ggplot2 Plot
# How to Draw a ggplot2 Plot from 2 Different Data Sources

search_lessons("legend") %>% view()
search_lessons("table") %>% view()
search_lessons("variables") %>% view()
search_lessons("sources") %>% view()
