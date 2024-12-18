source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Convert summary() Function Output to Data Frame in R --------------------

# In this tutorial, I’ll demonstrate how to transform the output of the summary() function to a data frame in the R programming language.

# Example Data
head(iris) # Preview the iris data frame
#   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
# 1          5.1         3.5          1.4         0.2  setosa
# 2          4.9         3.0          1.4         0.2  setosa
# 3          4.7         3.2          1.3         0.2  setosa
# 4          4.6         3.1          1.5         0.2  setosa
# 5          5.0         3.6          1.4         0.2  setosa
# 6          5.4         3.9          1.7         0.4  setosa
# Example: Applying data.frame() & unclass() Functions to Convert Summary Statistics to Data Frame
iris_summary <- data.frame(unclass(summary(iris)),  # Transforming summary stats to data frame
                           check.names = FALSE)
iris_summary2 <- data.frame(unclass(summary(iris)),  # Transforming summary stats to data frame
                           check.names = TRUE)

iris_summary
str(iris_summary)
str(summary(iris))
str(unclass(summary(iris)))

# What does the unclass() function do? The unclass() function is used to convert the output of the summary() function to a numeric vector. This numeric vector is then transformed to a data frame using the data.frame() function.

# what is a table in R? A table in R is a data structure that organizes data in rows and columns. It is similar to a spreadsheet or a database table. Tables are commonly used to store and manipulate data in R.

# difference between a data frame and a table in R? A data frame is a type of table in R. A data frame is a two-dimensional data structure that stores data in rows and columns. It is similar to a table in a database or a spreadsheet. The main difference between a data frame and a table is that a data frame is a specific type of table that is used in R.

# how many dimensions does a table have in R? A table in R is a two-dimensional data structure. It has rows and columns, similar to a spreadsheet or a database table.

# what does the argument check.names = FALSE do in the data.frame() function? The check.names = FALSE argument in the data.frame() function prevents R from automatically converting column names to valid variable names. This can be useful when working with data frames that have non-standard column names.

colnames(iris_summary) 
colnames(iris_summary2) 
rownames(iris_summary)
rownames(iris_summary2)

# How to remove row names from a data frame in R? To remove row names from a data frame in R, you can use the rownames() function with the NULL argument. Here is an example:
#   
# # Remove row names from data frame
# rownames(iris_summary) <- NULL

# what about the unname function? The unname() function is used to remove the names of an object in R. It returns the object without the names attribute. This can be useful when you want to remove the names of a vector, list, or other object in R.
example_vector <- c(1, 2, 3, 4, 5)
names(example_vector) <- c("A", "B", "C", "D", "E")
example_vector

test <- unname(iris_summary)
test
# unname does not remove row names
dimnames(iris_summary)

# > test <- unname(iris_summary2, force = TRUE)
# Error in `dimnames<-.data.frame`(`*tmp*`, value = NULL) : 
#   invalid 'dimnames' given for data frame

#        Sepal.Length     Sepal.Width    Petal.Length     Petal.Width
# X   Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100  
# X.1 1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300  
# X.2 Median :5.800   Median :3.000   Median :4.350   Median :1.300  
# X.3 Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199  
# X.4 3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800  
# X.5 Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  
#             Species
# X   setosa    :50  
# X.1 versicolor:50  
# X.2 virginica :50  
# X.3            <NA>
# X.4            <NA>
# X.5            <NA>
# Further Resources
# Here, you may find some further resources on topics such as data conversion and numeric values:
  
# Descriptive Statistics Using summary() Function
# Convert Data Frame Column to Numeric
# Convert Row to Header of Data Frame
# How to Convert Data Frame from Long to Wide Format

# Summary: This tutorial illustrated how to convert the output of the summary() function to a data frame in the R programming language.

search_lessons("summary") %>% view()
is.table(iris_summary)
is.data.frame(iris_summary)

# what is the difference between unclass and unlist in R? The unclass() function is used to convert an object to its underlying class in R. It returns the object without any attributes. The unlist() function is used to convert a list to a vector in R. It returns a vector containing the elements of the list. The main difference between unclass() and unlist() is that unclass() is used for objects with a class attribute, while unlist() is used for lists.