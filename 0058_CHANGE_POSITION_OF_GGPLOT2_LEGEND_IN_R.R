source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # source block to be used for updating the lessons list
# Change Position of ggplot2 Legend in R

# In this post you’ll learn how to change the position of ggplot2 legends in the R programming language.

# Preparing the Examples
head(iris)
# Example 1: Draw ggplot2 Legend at the Right Side of a Plot
my_plot <- ggplot(iris, aes(x = Sepal.Width,    # ggplot2 legend right side
                            y = Petal.Width,
                            col = Species)) +
  geom_point()
my_plot  

# Example 2: Draw ggplot2 Legend at the Bottom of a Plot
my_plot +                                       # ggplot2 legend below graph
  theme(legend.position = "bottom")

# Example 3: Draw ggplot2 Legend at the Left Side of a Plot
my_plot +                                       # ggplot2 legend left side
  theme(legend.position = "left")

# Example 4: Draw ggplot2 Legend at the Top of a Plot
my_plot +                                       # ggplot2 legend above graph
  theme(legend.position = "top")

# Example 5: Manually Set Position of ggplot2 Legend (Inside Plot)
my_plot +                                       # ggplot2 legend within graph
  theme(legend.position = c(0.8, 0.5))

search_lessons("legend") %>% view()
search_lessons("plot") %>% view()
search_lessons("position") %>% view()

# In this post you learned how to change the position of ggplot2 legends in the R programming language. If you have any further questions, please let me know in the comments section.
