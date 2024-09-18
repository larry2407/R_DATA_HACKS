source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Annotate Count by Group to ggplot2 Boxplot in R (Example Code) ----------

# In this R programming post you’ll learn how to add the observations by group to a boxplot.

# Preparing the Example
data(iris)                     # Example data
head(iris)

my_plot <- ggplot(iris,        # Drawing ggplot2 boxplot without counts
                  aes(x = Species,
                      y = Petal.Width)) +
  geom_boxplot()
my_plot # Print ggplot2 boxplot

# Example: Annotating Count Labels by Group to ggplot2 Boxplot
my_plot +                      # Annotating count labels to boxplot
  annotate("text", 
           x = 1:length(table(iris$Species)), # x position
           y = aggregate(Petal.Width ~ Species, iris, median)[ , 2], # y position
           label = paste("n =", table(iris$Species)), # label
           size = 5, # size of text
           col = "purple", # color of text
           vjust = - 0.6) # vertical adjustment

## Summary: This tutorial showed how to annotate count labels by group to a ggplot2 boxplot in the R programming language. If you have any further questions, please let me know in the comments section.

# Further Resources & Related Tutorials
# Please find some related R tutorials on topics such as colors, ggplot2, and groups in the following list.

# Add Text in Multiple Lines to ggplot2 Graph in R
# How to Add Text Outside of ggplot2 Plot Borders
# ggplot2 R Warning – geom_path Each Group One Observation
# How to Add a ggplot2 Title & Subtitle with Different Size & Color

search_lessons("Add") %>% view()
search_lessons("Warning") %>% view()
