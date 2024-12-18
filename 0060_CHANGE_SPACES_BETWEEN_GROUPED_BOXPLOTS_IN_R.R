source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # source block to be used for updating the lessons list
# Change Spaces Between Grouped Boxplots in R

# Change Spaces Between Grouped Boxplots in R (2 Examples)
# In this article, I’ll explain how to adjust the spaces between ggplot2 boxplot groups in R.

# Setting up the Examples
iris_new <- iris
iris_new$new <- letters[1:2]
head(iris_new)

ggplot(iris_new,                     # Default ggplot2 boxplot
       aes(x = Species,
           y = Sepal.Length,
           fill = new)) +
geom_boxplot()

# Example 1: Same Space Between All Boxes
ggplot(iris_new,                     # Equal space
       aes(x = Species,
           y = Sepal.Length,
           fill = new)) +
geom_boxplot(position = position_dodge(1))

# Example 2: Avoid Space Between Boxplot Groups
ggplot(iris_new,                     # No space
       aes(x = Species,
           y = Sepal.Length,
           fill = new)) +
  geom_boxplot(position = "dodge")

# Related Tutorials & Further Resources
# You may find some related R programming language tutorials on topics such as graphics in R and ggplot2 in the following list:
  
# Modify Width of ggplot2 Bars to Increase Space
# Add Space Between Panels of ggplot2 Facet Plot in R
# Change Space Between Axis Label & Plot in Base R
# How to Modify the Space Between Axis Tick Marks of a Plot in Base R

search_lessons("Modify") %>% view()
search_lessons("space") %>% view()
search_lessons("facet") %>% view()
search_lessons("axis") %>% view()
search_lessons("tick") %>% view()
search_lessons("bars") %>% view()
search_lessons("panels") %>% view()
search_lessons("plot") %>% view()
search_lessons("base") %>% view()
search_lessons("graphics") %>% view()