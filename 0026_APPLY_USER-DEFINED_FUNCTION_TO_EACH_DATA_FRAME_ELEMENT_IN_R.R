source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Apply User-Defined Function to Each Data Frame Element in R (Exa --------

# This page explains how to apply a user-defined function to each data frame cell in the R programming language.

head(iris) # preview the iris data frame

# Example: Applying User-Defined Function to Each Data Frame Element
iris_new <- iris %>% # Assign new data frame to iris_new
  mutate_all(~ . * 2) # Multiply each element by 2 # does not work for factors!
# using across() function
iris_new <- iris %>% # Assign new data frame to iris_new
  mutate(across(everything(), ~ .x * 2)) # Multiply each element by 2 # does not work for factors!
iris_new # Print updated data frame in RStudio console
# my way of doing it
iris_new <- iris %>% # Assign new data frame to iris_new
  mutate(across(where(is.numeric), ~ .x * 2))
# my other way of doing it
iris_new <- iris %>% # Assign new data frame to iris_new
  mutate(across(where(is.numeric), \(x) x * 2))
iris_new # Print updated data frame in RStudio console

# Example: Applying Manually Defined Function to Each Data Frame Cell
iris_bis <- iris
iris_bis[] <- lapply(iris, function(x) { paste("new", x) })  # Using lapply() function
head(iris_bis)
str(iris_bis)

iris_bis[] <- lapply(iris, \(x) { paste("new", x) })  # Using lapply() function
head(iris_bis)
str(iris_bis)
# using across() function
iris_bis <- iris %>% # Assign new data frame to iris_new
  mutate(across(everything(), \(x) paste("new", x))) 
iris_bis <- iris %>% # Assign new data frame to iris_new
  mutate(across(everything(), ~paste("new", .x))) 

# Summary: This tutorial showed how to apply a user-defined function to each data frame element in the R programming language.
# Question about notation: What is the difference between the ~ and .x notation in the dplyr package?
# The ~ notation is used to define a formula in the dplyr package. The .x notation is used to refer to the current column in the dplyr package. 
# Should ~ be used with mutate() and .x with across()?
# The ~ notation is used with the mutate() function in the dplyr package to define a formula. The .x notation is used with the across() function in the dplyr package to refer to the current column.
# Further Resources & Related Tutorials
# Please find some related R tutorials in the following list.
# 
# Count Number of Non-Zero Values in Each Data Frame Column
# How to Repeat Each Row of a Data Frame in R
search_lessons("count") %>% view()
search_lessons("repeat") %>% view()
search_lessons("apply") %>% view()
search_lessons("function") %>% view()
search_lessons("dplyr") %>% view()
search_lessons("across") %>% view()
search_lessons("mutate") %>% view()
search_lessons("formula") %>% view()
search_lessons("notation") %>% view()
search_lessons("column") %>% view()
search_lessons("row") %>% view()
search_lessons("data frame") %>% view()
search_lessons("element") %>% view()
search_lessons("numeric") %>% view()
search_lessons("factor") %>% view()
search_lessons("character") %>% view()
search_lessons("logical") %>% view()
search_lessons("integer") %>% view()
search_lessons("double") %>% view()
search_lessons("complex") %>% view()
search_lessons("matrix") %>% view()
search_lessons("list") %>% view()
search_lessons("vector") %>% view()
search_lessons("array") %>% view()
search_lessons("user") %>% view()




