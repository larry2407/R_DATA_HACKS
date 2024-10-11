source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Building a data.table in R (2 Examples) ---------------------------------

# This page demonstrates how to you can create a data.table in R.

# Setting up the Examples
# Load the package data.table.

if(!require("data.table")) install.packages("data.table")                                # Install & load data.table package
library("data.table")

head(iris) # preview the iris data frame

# Example 1: Create a new data.table From the iris Data
# We use some information of the iris data to create a new data.table object in R using the following lines of code.

nr_rows <- 5
iris_subdat <- data.table("X" = iris$Sepal.Length[1:nr_rows], 
                          "Y" = iris$Petal.Width[1:nr_rows])  # Create a new data.table
iris_subdat
str(iris_subdat) # Check the structure of the data.table

# The above lines have created a data.table with columns X and Y. The columns are filled by the first 5 values of the iris data columns Sepal.Length and Sepal.Width.

# Example 2: Create a New data.table With Different Column Types
# In this example, we make a new data.table from scratch using the following code.

new_dt <- data.table("V_num"    = 1:7,
                     "V_string" = month.name[1:7],
                     "V_log"    = c(TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, TRUE))
new_dt
str(new_dt) # Check the structure of the data.table

# https://data-hacks.com/anna-lena-woelwer