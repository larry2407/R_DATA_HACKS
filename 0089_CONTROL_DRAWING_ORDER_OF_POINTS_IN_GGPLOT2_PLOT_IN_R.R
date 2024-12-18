source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Control Drawing Order of Points in ggplot2 Plot in R --------------------

# In this article you’ll learn how to control the order of points in a ggplot2 scatterplot in the R programming language.

# Preparing the Example
# data(iris)                                         # Example data
iris_new <- iris[ , c(1, 3)]
iris_new$my_colors <- c("special", rep("rest", nrow(iris_new) - 1))
head(iris_new)
# install.packages("ggplot2")                        # Install ggplot2 package
# library("ggplot2")                                 # Load ggplot2 package
ggplot(iris_new,                                   # Create plot with default ordering
       aes(x = Sepal.Length,
           y = Petal.Length,
           col = my_colors)) +
  geom_point(size = 20)

# Example: Reorder Rows of Data to Change Drawing Order of Points
iris_new2 <- iris_new[c(2:nrow(iris_new), 1), ]    # Reordering iris data
tail(iris_new2)                                    # Display bottom of reordered data
ggplot(iris_new2,                                  # Plot with new order
       aes(x = Sepal.Length,
           y = Petal.Length,
           col = my_colors)) +
  geom_point(size = 20)

# Related Articles & Further Resources
# Here, you can find some additional resources on topics such as graphics in R, ggplot2, and missing data.

# Eliminate Missing Values Before Drawing ggplot2 Plot
# How to Add Lines & Points to a ggplot2 Plot
# Drawing Predicted vs. Observed Values in ggplot2 Plot
# Change Alpha of Points in Plot – Base R & ggplot2

search_lessons("Eliminate") %>% view()
search_lessons("Line") %>% view()
search_lessons("Predict") %>% view()
search_lessons("Alpha") %>% view()
