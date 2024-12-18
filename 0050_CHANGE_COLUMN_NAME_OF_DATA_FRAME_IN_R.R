source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Change Column Name of Data Frame in R -----------------------------------

# The following R code shows how to rename column names of data frames in the R programming language.
# 
# Example Data
my_data <- data.frame(x1 = 1:3,
                      x2 = letters[1:3],
                      x3 = "X")
my_data

# Example 1: Change Column Name of One Specific Column
colnames(my_data)[colnames(my_data) == "x1"] <- "y1"
# names(my_data)[names(my_data) == "x1"] <- "y1" # Alternative
my_data

# Example 2: Change Column Names of All Columns
colnames(my_data) <- c("z1", "z2", "z3")
my_data

# Example 3: Change Column Names of Some Columns
colnames(my_data)[colnames(my_data) %in% c("z1", "z3")] <- c("a1", "a3")
my_data

# using dplyr package
if(!require("dplyr")) install.packages("dplyr") # Install & load dplyr
library("dplyr")
my_data <- rename(my_data, a1 = z1, a3 = z3)
my_data
# using select() function
my_data <- select(my_data, a1 = z1, z2, a3 = z3)
my_data

# using purrr package
if(!require("purrr")) install.packages("purrr") # Install & load purrr
library("purrr")
my_data <- set_names(my_data, c("b1", "b2", "b3"))

# using setNames() function
my_data <- stats::setNames(my_data, c("c1", "c2", "c3"))
my_data

# in this tutorial, I have illustrated how to change the column names of a data frame in the R programming language.


# https://www.youtube.com/watch?v=xTa8OLrrFzM&t=1s