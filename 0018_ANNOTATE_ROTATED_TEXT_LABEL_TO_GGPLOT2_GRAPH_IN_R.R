source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Annotate Rotated Text Label to ggplot2 Graph in R -----------------------

# This page demonstrates how to add a rotated text label to a ggplot2 graphic in R programming.

# Preparing the Example
data(iris)                       # Example data
head(iris)

# Example: Adding a Rotated Text Element to a ggplot2 Plot
ggplot(iris,                     # Add rotated text element
       aes(x = Sepal.Width,
           y = Petal.Width)) +
  geom_line() +
  annotate("text",
           x = 3, y = 1.5,
           label = "This is the Iris Data Set",
           col = "red",
           size = 10,
           angle = 45)

# Further Resources & Related Tutorials
# Have a look at the following tutorials. They focus on topics such as dates, text elements, ggplot2, and graphics in R:
  
# Date Range as ggplot2 Plot Axis Limits
# Get Rid of Borders of ggplot2 Text Label
# Add Text in Multiple Lines to ggplot2 Graph
# Adjust Position of ggplot2 Plot Title
# How to Add Text Outside of ggplot2 Plot Borders

# Summary: This tutorial showed how to add a rotated text label to a ggplot2 plot in the R programming language. If you have any further questions, please let me know in the comments section
# open question: how to rotate text in ggplot2? (ask R Wizard)
# open question: how to add text with expressions in ggplot2? (ask R Wizard)
# open question: how to add text with background color in ggplot2? (ask R Wizard)
# open question: how to add text with different font sizes in ggplot2? (ask R Wizard)
search_lessons("annotate") %>% view()
search_lessons("rotate") %>% view()
search_lessons("range") %>% view()
search_lessons("border") %>% view()
search_lessons("multiple") %>% view()
search_lessons("matri") %>% view()
search_lessons("position") %>% view()
