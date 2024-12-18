source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Convert Variable Names to Upper & Lower Case in R -----------------------

# This article shows how to convert variable names to upper and lower case in the R programming language.

# Creation of Example Data
head(iris) # preview the iris data frame

# Example 1: Converting Letters in Variable Names to Upper Case
names(iris) <- toupper(names(iris))    # Upper case
head(iris)                             # Display updated data

# Example 2: Converting Letters in Variable Names to Lower Case
names(iris) <- tolower(names(iris))    # Lower case
head(iris)                             # Display updated data

# Further Resources & Related Tutorials
# Have a look at the following R tutorials. They illustrate topics such as matrices, extracting data, and merging.

# Merge data.tables with Different Column Names in R
# Change Variable Names of Aggregated Data
# How to Change Names of List Items
# Extract Matrix Values by Row & Column Names

search_lessons("merge") %>% view()
search_lessons("Change") %>% view()

# Question: can colnames() be used instead of names()?
# Answer: Yes, colnames() can be used instead of names() to change the column names of a data frame in R. Both functions are equivalent and can be used interchangeably. The colnames() function is a wrapper for the names() function and is used specifically for data frames and matrices. The names() function can be used for any type of object in R, including lists, vectors, and data frames. The colnames() function is more commonly used when working with data frames and matrices, while the names() function is used for other types of objects.
