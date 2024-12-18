source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Change Alpha of Points in Plot – Base R & ggplot2 -----------------------

# Base R
# In this article you’ll learn how to decrease the alpha of points in an xy-plot using Base R and the ggplot2 package in the R programming language.
# 
# Preparing the Examples
# data(iris)                                                     # Loading iris data set
head(iris)
# Example 1: Decrease Alpha in Base R Scatterplot
plot(iris$Petal.Length,                                        # Graph without transparency
     iris$Petal.Width,
     cex = 6,
     pch = 16,
     col = iris$Species)
# Decrease alpha
# GitHub Copilot solution does not work
plot(iris$Petal.Length,                                        # Graph with transparency
     iris$Petal.Width,
     cex = 6,
     pch = 16,
     col = adjustcolor(iris$Species, alpha.f = 0.5))
# Error in col2rgb(col, alpha = TRUE) : invalid colour name 'setosa'
# Fix error
plot(iris$Petal.Length,                                        # Graph with transparency
     iris$Petal.Width,
     cex = 6,
     pch = 16,
     col = adjustcolor(as.numeric(iris$Species), alpha.f = 0.5))
# Error in col2rgb(col, alpha = TRUE) : invalid colour name 'setosa'
# Fix error failed → as.numeric instead of as.character solves the problem above

if(!require("scales")) install.packages("scales", dependencies = TRUE)
library(scales)
plot(iris$Petal.Length,                                        # Transparent graph
     iris$Petal.Width,
     cex = 6,
     pch = 16,
     col = alpha(as.numeric(iris$Species), 0.5))

# Example 2: Decrease Alpha in ggplot2 Scatterplot
# install.packages("ggplot2")                                    # Install & load ggplot2 # already installed
# library("ggplot2")
ggplot(iris, aes(Petal.Length, Petal.Width, col = Species)) +  # Graph without transparency
  geom_point(size = 15)

ggplot(iris, aes(Petal.Length, Petal.Width, col = Species)) +  # Transparent graph
  geom_point(size = 15, alpha = 0.3)

# Summary: This article explained how to decrease the alpha of points in a plot using Base R and the ggplot2 package in the R programming language. If you have any further questions, please let me know in the comments section.

# Further Resources & Related Tutorials
# Have a look at the following tutorials. They explain topics such as colors, ggplot2, and graphics in R:

search_lessons("colors") %>% view()
search_lessons("graph") %>% view()
