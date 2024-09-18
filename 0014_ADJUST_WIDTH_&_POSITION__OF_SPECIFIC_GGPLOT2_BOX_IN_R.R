source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule
## source("0000_HELPER_FUNCTIONS.R") # Load helper functions

# Adjust Width & Position of Specific ggplot2 Boxplot in R (2 Exam --------

# In this R tutorial you’ll learn how to adjust the width and position of a specific boxplot in a grouped ggplot2 boxplot.

# Preparing the Examples
data(iris)                           # Creating example data
iris_new <- iris
iris_new$subgroup <- letters[1:3]
iris_new$subgroup[iris_new$Species == "setosa" & (iris_new$subgroup == "b" | iris_new$subgroup == "c")] <- "a"
head(iris_new)
## create iris_new_2 in the same way as iris_new using dplyr::mutate() function
iris_new_2 <- iris %>% 
  mutate(subgroup = rep(letters[1:3], nrow(iris)/length(letters[1:3]))) %>% 
  mutate(subgroup = ifelse(Species == "setosa" & (subgroup == "b" | subgroup == "c"), "a", subgroup))
identical(iris_new, iris_new_2) 
all.equal(iris_new, iris_new_2)
attributes(iris_new) # $names, $class)
attributes(iris_new_2) # $names, $class)
## mutate does not change the class of the data frame
class(iris_new) # "data.frame"
class(iris_new_2) # "data.frame"

ggplot(iris_new,                     # ggplot2 boxplot with default specifications
       aes(x = Species,
           y = Petal.Width,
           fill = subgroup)) +
  geom_boxplot()
# Example 1: Apply position_dodge2() Function Change to change Width of Grouped ggplot2 Boxplot
ggplot(iris_new,                     # Change width
       aes(x = Species,
           y = Petal.Width,
           fill = subgroup)) +
  geom_boxplot(position = position_dodge2(preserve = "single"))
# Example 2: Apply position_dodge2() Function Change to change Location of Grouped ggplot2 Boxplot
ggplot(iris_new,                     # Change position
       aes(x = Species,
           y = Petal.Width,
           fill = subgroup)) +
  geom_boxplot(position = position_dodge(preserve = "single"))

# Related Tutorials
# Below, you can find some further resources that are related to the content of this article.
# 
# Annotate Count by Group to ggplot2 Boxplot
# ggplot2 Facet Boxplot for Groups of Continuous Variable
# Adjust Position of ggplot2 Plot Title in R
# Modify Box & Fill Colors of ggplot2 Boxplot
search_terms <- c("Annotate Count by Group to ggplot2 Boxplot",
                  "ggplot2 Facet Boxplot for Groups of Continuous Variable",
                  "Adjust Position of ggplot2 Plot Title in R",
                  "Modify Box & Fill Colors of ggplot2 Boxplot")
search_lessons("Annotate") %>% view()
search_lessons("facet") %>% view()
search_lessons("Position") %>% view()
search_lessons("Modify") %>% view()
