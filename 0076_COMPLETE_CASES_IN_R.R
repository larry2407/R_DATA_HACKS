source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Complete Cases in R -----------------------------------------------------

# The following R code shows how to apply the complete.cases() function in the R programming language.

# Example Data Frame
my_data <- data.frame(x = c(3, 6, NA, 3, 2),         # Create example data
                      y = letters[1:5],
                      z = c(NA, 2, 1, 1, 2))
my_data                                              # Print example data

# Example 1: Basic Application of complete.cases Function in R
# The complete.cases function returns a logical vector, indicating whether a row is complete (i.e. without NA values).

complete.cases(my_data)                              # Apply complete.cases function
complete.cases(my_data) == rep(TRUE, nrow(my_data))  # Check if all rows are complete
which(complete.cases(my_data))                        # Get indices of complete rows
# the rows with indices 2, 4, and 5 are complete

# Example 2: Listwise Deletion in R
# The complete.cases function can be used to perform listwise deletion:
  
data_complete <- my_data[complete.cases(my_data), ]  # Listwise deletion in R
data_complete                                        # Print reduced data
# only complete cases are retained
#
# Summary: This tutorial illustrated how to apply the complete.cases function in the R programming language.
# see https://youtu.be/OVHIYAEAHLY

search_lessons("NA ") %>% view()
search_lessons("NaN ") %>% view()
