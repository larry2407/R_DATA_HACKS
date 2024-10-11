source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Append Characters in Front of Numeric Data Frame Variable in R ( --------

# In this R tutorial you’ll learn how to append characters at the beginning of a numeric data frame variable.
# 
# Introduction of Example Data
data(iris)                           # Loading an exemplifying data frame
head(iris)

# Example: Adding Characters to Numeric Column Using the paste0() Function
iris_upd <- iris                     # Creating new data frame with characters
iris_upd$Sepal.Length <- paste0("char",
                                iris_upd$Sepal.Length)
head(iris_upd)
# do the same thing using the function transform()
iris_upd_t1 <- transform(iris, Sepal.Length = paste0("char", Sepal.Length))
# can also be written using the pipe operator %>% 
iris_upd_t2 <- iris %>% 
  transform(Sepal.Length = paste0("char", Sepal.Length))
identical(iris_upd_t2, iris_upd_t1)

# and with dplyr::mutate()
iris_upd_t3 <- iris %>% 
  mutate(Sepal.Length = paste0("char", Sepal.Length))
identical(iris_upd_t3, iris_upd_t1)

# Summary: This tutorial illustrated how to add characters in front of a numeric data frame variable in the R programming language.
# what differences between transform() and mutate() functions?
# The transform() function is a base R function that is used to add new columns to a data frame. The mutate() function is a function from the dplyr package that is used to add new columns to a data frame. The main difference between the two functions is that the transform() function returns the data frame with the new columns, while the mutate() function returns the data frame with the new columns and keeps the original columns. In addition, the mutate() function is more flexible and allows for more complex operations on the data frame.

# Further Resources & Related Tutorials
# Below, you can find some further resources that are similar to the content of this page.
# 
# Convert Categorical Data Frame Column to Numeric / Integer
# Replicate Column with & Add to Data Frame with New Name
# Add New Column to Data Frame in for-Loop in R
# Add Lagged Column by Group to Data Frame Using dplyr
# Convert Data Frame Column to Numeric in R
search_lessons("Categorical") %>% view()
search_lessons("convert") %>% view()
search_lessons("transform") %>% view()
search_lessons("replicate") %>% view()
search_lessons("loop") %>% view()
search_lessons("lag") %>% view()
search_lessons("tidy") %>% view()
search_lessons("summar") %>% view()
