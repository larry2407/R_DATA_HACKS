source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Concatenate Two data.table Objects Vertically in R ----------------------

# In this article you’ll learn how to append two data.tables vertically in the R programming language.

# Preparing the Example

if(!require(data.table)) {install.packages("data.table"); library(data.table)}  # Install and load data.table package

# why is there a semi-colon at the end of the line in the code above?
# The semi-colon is used to separate two commands that are written in the same line of code. This is useful when you want to write multiple commands in a single line of code. In the code above, the semi-colon is used to separate the two commands that are written in the same line of code. The first command installs the data.table package, while the second command loads the data.table package. By using the semi-colon, you can write both commands in a single line of code, which makes the code more concise and easier to read.

# First, we need to create some example data that we can use in the examples below:

dt_A <- data.table(A = 10:5,            # Create two data.tables
                   B = letters[10:5])
dt_A
dt_B <- data.table(A = 21:15,
                   B = letters[21:15])
dt_B
# Example: Appending Two data.tables Vertically
dt_AB <- rbindlist(list(dt_A, dt_B))    # Concatenate two data.tables
dt_AB
# Further Resources
# Below, you may find some further resources that are related to the content of this page.

# How to Append Two Matrices
# How to Append Several Variables to data.table

search_lessons("Append") %>% view()

# Summary: This tutorial illustrated how to concatenate two data.tables vertically in the R programming language.

# What is the difference between rbind() and rbindlist() functions in the data.table package?
# The rbind() function is a base R function that is used to combine two or more data frames or matrices by row. The rbindlist() function is a function from the data.table package that is used to combine two or more data.tables by row. The main difference between the two functions is that the rbind() function is used to combine data frames or matrices, while the rbindlist() function is used to combine data.tables. In addition, the rbindlist() function is more efficient and faster than the rbind() function when combining large data.tables.

# Further Resources & Related Articles
# Have a look at the following list of R programming tutorials. They illustrate topics such as indices, extracting data, vectors, and groups.
# https://data-hacks.com/anna-lena-woelwer/
