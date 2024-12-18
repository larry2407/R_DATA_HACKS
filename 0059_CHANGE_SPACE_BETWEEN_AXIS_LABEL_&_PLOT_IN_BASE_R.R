source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # source block to be used for updating the lessons list
# Change Space Between Axis Label & Plot in Base R

# This post shows how to move axis text closer to the axes of a graphic in R.

# Creation of Example Data
head(iris)                           # Loading iris data set

plot(iris$Sepal.Length,              # Draw default Base R plot
     iris$Sepal.Width, 
     xaxt = "n",
     yaxt = "n")
# Example: Modifying Space Between Axis Text & Base R Plot Using title() Function
plot(iris$Sepal.Length,              # Draw Base R plot without axis labels
     iris$Sepal.Width, 
     xaxt = "n",
     yaxt = "n",
     xlab = "",
     ylab = "")
title(xlab = "iris$Sepal.Length",    # Add x-axis text
      line = 0)
title(ylab = "iris$Sepal.Width",     # Add y-axis text
      line = 0)

# Example: Modifying Space Between Axis Text & Base R Plot Using mtext() Function
plot(iris$Sepal.Length,              # Draw Base R plot without axis labels
     iris$Sepal.Width, 
     xaxt = "n",
     yaxt = "n",
     xlab = "",
     ylab = "")
mtext("iris$Sepal.Length",            # Add x-axis text
      side = 1,
      line = 0)
mtext("iris$Sepal.Width",             # Add y-axis text
      side = 2,
      line = 0)

search_lessons("base R") %>% view()

# Related Tutorials
# Have a look at the following R programming tutorials. They explain similar topics as this page:
  
# Draw Line Segment to Plot in Base R
# Using Real Values as Axis Ticks of Plot
# How to Store a Plot in a Data Object Using Base R
# How to Modify the Space Between Axis Tick Marks of a Plot in Base R