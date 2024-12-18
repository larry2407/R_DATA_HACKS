source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")
# Comparison of data.table Columns in R
# This tutorial shows how to make different comparisons of the columns of two data.tables in the R programming language. For example, we will answer the questions: Do the data.tables contain data rows with exactly the same information? Which of the IDs in one data.table are also present in the other data.table and where?
#   
#   Preparing the Examples
# To handle data.tables in R, we first have to load the data.table package. The documentation of the package can be found here.
if(!require("data.table")) install.packages("data.table")                                     # Install data.table package
library("data.table")                                              # Load data.table package
# For the illustration, we use the built-in iris dataset. More information on the iris dataset can be found there
# https://rpubs.com/nicktoscano/855296

head(iris)                                                         # Print first rows of iris data
# To the data, we add a column called ID for indicating the observation ID of a data row.

iris$ID <- 1:nrow(iris)                                            # Adding ID column
head(iris)                                                         # Print updated iris data
# The updated iris data contains the new ID column. Now, we can proceed with the comparison of the data.table columns.

# From the iris data, we create a data.table called iris_DT_1 which contains the first four rows of the data.
iris_DT_1 <- as.data.table(iris[1:4, ])                            # Creating data.table 1
iris_DT_1                                                           # Print data.table 1
# Furthermore, we create a data.table called iris_DT_2 containing data row two to six of the iris data.

iris_DT_2 <- as.data.table(iris[2:6, ])                            # Creating data.table 2
iris_DT_2 # Print data.table 2
# In the following examples, we compare the two data.tables iris_DT_1 and iris_DT_2.

# Example 1: Counting Number of Rows With Exactly Same Values
# In this example, we ask ourselves: How many exact duplicate rows are in the data.tables iris_DT_1 and iris_DT_2? For that, we first row-wisely stack the two data.tables on top of each other.

iris_DT_12 <- rbindlist(list(iris_DT_1, iris_DT_2))                # Combining Two data.tables
iris_DT_12                                                         # Displaying data
#    Sepal.Length Sepal.Width Petal.Length Petal.Width Species ID
# 1:          5.1         3.5          1.4         0.2  setosa  1
# 2:          4.9         3.0          1.4         0.2  setosa  2
# 3:          4.7         3.2          1.3         0.2  setosa  3
# 4:          4.6         3.1          1.5         0.2  setosa  4
# 5:          4.9         3.0          1.4         0.2  setosa  2
# 6:          4.7         3.2          1.3         0.2  setosa  3
# 7:          4.6         3.1          1.5         0.2  setosa  4
# 8:          5.0         3.6          1.4         0.2  setosa  5
# 9:          5.4         3.9          1.7         0.4  setosa  6
# We sum the number of duplicate rows. The duplicate rows are indicated by the logical output of function duplicated().

sum(duplicated(iris_DT_12))                                        # Number of duplicate rows
# [1] 3
# There are three duplicate rows in the data.

# Example 2: Combining Information From Multiple data.tables Without Duplicates
# In this example, we want to combine the information of data.tables iris_DT_1 and iris_DT_2 without having duplicated rows. This is done by use of function merge.data.table() with its argument all set to TRUE.

iris_DT_12b <- merge.data.table(iris_DT_1, iris_DT_2, all = TRUE)  # Merging Two data.tables
iris_DT_12b                                                        # Displaying data
#    Sepal.Length Sepal.Width Petal.Length Petal.Width Species ID
# 1:          4.6         3.1          1.5         0.2  setosa  4
# 2:          4.7         3.2          1.3         0.2  setosa  3
# 3:          4.9         3.0          1.4         0.2  setosa  2
# 4:          5.0         3.6          1.4         0.2  setosa  5
# 5:          5.1         3.5          1.4         0.2  setosa  1
# 6:          5.4         3.9          1.7         0.4  setosa  6
# Although the data rows with ID equal to 2, 3, and 4 appeared in both datasets, they appear only once in the merged data.table.

# Example 3: Counting Number of Rows With Information on Same IDs
# Now we ask ourselves: How many of the IDs appearing in one data.table are also included in the other?
  
  table(iris_DT_1$ID %in% iris_DT_2$ID)                              # Counting common values
# FALSE  TRUE 
#     1     3
# Three of the four ID values in iris_DT_1 are also present in iris_DT_2.

table(iris_DT_2$ID %in% iris_DT_1$ID)                              # Counting common values
# FALSE  TRUE 
#     2     3
# Three of the five ID values in iris_DT_2 are also present in iris_DT_1.

# Example 4: Receiving the Indices of Those IDs Which Appear in Another data.table
# With the following code, we get the position of those IDs in iris_DT_1 which also appear in iris_DT_2.

which(iris_DT_1$ID %in% iris_DT_2$ID)                              # Indices of common IDs
# [1] 2 3 4
# Example 5: Receiving the IDs Which Appear in Another data.table
# Now we want to know the values of the IDs which appear in another dataset.

iris_DT_1$ID[iris_DT_1$ID %in% iris_DT_2$ID]                       # Values of common IDs
# [1] 2 3 4
# The IDs with values 2, 3, and 4 appear in both datasets.

# Summary: This tutorial illustrated how to compare the columns of two data.tables in the R programming language. In case you have any further questions, please let me know in the comments section.

# Further Resources & Related Tutorials
# You may find some related tutorials on the manipulation of data.tables in the following list:
# All examples for the data.table package come from
# https://data-hacks.com/anna-lena-woelwer
# https://www.rdocumentation.org/packages/data.table/versions/1.14.2



