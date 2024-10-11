source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Apply Log Transformation to All Columns of Data Frame in R (Exam --------

# This tutorial demonstrates how to apply a log transformation to all columns of a data frame in R.

# Creation of Example Data
data(iris)                       # Load and manipulat example data
iris_num <- iris[ , 1:4]
head(iris_num)

# Example: Log Transformation of All Cells in Data Frame
iris_num_log <- log(iris_num)    # Apply log() function
head(iris_num_log)

# Example: Log Transformation of All Columns in Data Frame
iris_num_log2 <- log(iris_num + 1) # Apply log() function with offset
head(iris_num_log2)

# using dplyr
library(dplyr)
# is.positive <- function(x) x > 0
iris_num_log3 <- iris %>% mutate(across(where(is.numeric), \(x) log(1 + x)))
iris_num_log4 <- iris %>% mutate(across(where(is.numeric), ~log(1 + .x)))
head(iris_num_log3)
head(iris_num_log4)

# equivalence of the notations across(where(is.numeric), \(x) log(1 + x)) and across(where(is.numeric), ~log(1 + .x))

# Summary: This tutorial illustrated how to apply a log transformation to all columns of a data frame in the R programming language.
search_lessons("log") %>% view()
