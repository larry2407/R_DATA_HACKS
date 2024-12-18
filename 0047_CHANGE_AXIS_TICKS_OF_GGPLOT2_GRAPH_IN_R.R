source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Change Axis Ticks of ggplot2 Graph in R ---------------------------------

# This article illustrates how to change the axis tick marks of a ggplot2 graphic in R programming.

# Setting up the Example
head(iris)

my_plot <- ggplot(iris,        # ggplot2 graph with default axis breaks
                  aes(x = Sepal.Length,
                      y = Sepal.Width)) +
  geom_line()
my_plot

# Example: Set X-Axis Ticks in ggplot2 Plot Manually Using scale_x_continuous() Function
my_plot + scale_x_continuous(breaks = c(4, 5, 6, 7, 8, 9, 10))

my_plot +                      # Setting axis ticks manually
  scale_x_continuous(breaks = c(4.5, 5, 7))

# Related Articles
# In addition, you might want to have a look at the related tutorials of my website:
#   
#   ggplot2 – How to Create Axis Breaks with Integers Only
# Set ggplot2 Axis Limits without Deleting Data Rows

# Summary: This tutorial showed how to change the axis tick marks of a ggplot2 graphic in the R programming language. If you have any further questions, please let me know in the comments section.
search_lessons("Create") %>% view()
search_lessons("Axis") %>% view()
search_lessons("Limits") %>% view()
search_lessons("Data") %>% view()
search_lessons("breaks") %>% view()
