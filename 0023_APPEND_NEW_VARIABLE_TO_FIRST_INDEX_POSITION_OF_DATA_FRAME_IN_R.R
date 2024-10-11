source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Append New Variable to First Index Position of Data Frame in R ( --------


# In this R programming tutorial you’ll learn how to add a new column to the front (not the end) of a data frame.
# 
# Creation of Example Data
data(iris) # Load example data
head(iris) # Print example data

# Example: Appending a New Column at the Front of a Data Frame Using the cbind() Function
iris_updated_1 <- cbind(col_new = 1:nrow(iris),    # Adding column
                      iris)
head(iris_updated_1) # Print updated data

# Example: Appending a New Column at the Front of a Data Frame Using the data.frame() Function
iris_updated_2 <- data.frame(col_new = 1:nrow(iris), # Adding column
                           iris)
head(iris_updated_2) # Print updated data

# Example: Appending a New Column at the Front of a Data Frame Using the dplyr::mutate() Function
library(dplyr) # Load dplyr package
iris_updated_3 <- iris %>% 
  mutate(col_new = 1:nrow(iris)) %>% # Adding column
  select(col_new, everything()) # Reordering columns
head(iris_updated_3) # Print updated data

# using relocate() function to move the new column to the first position
iris_updated_4 <- iris %>% 
  mutate(col_new = 1:nrow(iris)) %>% # Adding column
  relocate(col_new) # Moving column to first position
head(iris_updated_4) # Print updated data

iris_updated_5 <- iris %>% 
  rownames_to_column(var = "row_id") 
head(iris_updated_5) # Print updated data

iris_updated_6 <- iris %>% 
  rowid_to_column() 
head(iris_updated_6) # Print updated data

# Summary: This tutorial illustrated how to add a new column to the front of a data frame in the R programming language.
# what differences between cbind() and data.frame() functions?
# The cbind() function is a base R function that is used to combine vectors or data frames by columns. The data.frame() function is a base R function that is used to create a data frame from vectors or lists. The main difference between the two functions is that the cbind() function combines the input objects by columns, while the data.frame() function creates a data frame from the input objects. In addition, the cbind() function is more flexible and allows for more complex operations on the input objects.

# Further Resources & Related Tutorials
# Please find some related R programming language tutorials in the following list.
# 
# Add Lagged Column by Group to Data Frame Using dplyr
# Create New Data Frame Column Using Other Variables in R
# Add New Data Frame Rows for Missing Dates
# How to Add a New Variable Between 2 Data Frame Columns
# Replicate Column with & Add to Data Frame with New Name
# Add New Column to Data Frame in for-Loop
search_lessons("Lag") %>% view()
search_lessons("using") %>% view()
search_lessons("use") %>% view()
search_lessons("between") %>% view()
search_lessons("plicate") %>% view()
search_lessons("for-Loop") %>% view()
