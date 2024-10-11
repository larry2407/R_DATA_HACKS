source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Applying Function to Multiple Columns of data.table in R (4 Exam --------

# In this R tutorial you’ll learn how to handle lapply with data.table objects.

# Setting up the Examples
# Start by installing and loading the data.table package. We also have an overview post of data.table here. You can find the GitLab repository of data.table here : https://rdatatable.gitlab.io/data.table/articles/datatable-intro.html

install.packages("data.table")                                                                                                                          # Install & load data.table
library("data.table")
# Take the iris data as an example dataset.

head(iris)         

# Copy the data and put it in the data.table format.

iris_DT <- data.table(data.table::copy(iris))                                                                                                           # Copying data as data.table
# Example 1: Calculating the Sum Values of Multiple Variables
# In this example, we want to use lapply to apply the sum() function to multiple data.table columns. We do this by use of .SD and .SDcols. .SD serves as a placeholder for each of the columns which we put in .SDcols.

iris_DT[ , lapply(.SD, sum), .SDcols = c("Sepal.Length", "Petal.Length")]                                                                              # Calculating sum values

# The previous line returns the sum of Sepal.Length and Petal.Length.
# 
# Example 2: Calculating the Sum Values of Multiple Variables by Groups
# Now, we go one step further by calculating the sum of both variables for each category of column Species. For that, we simply add the “, by =” argument to the previous code as follows.

iris_DT[ , lapply(.SD, sum), by = .(Species), .SDcols = c("Sepal.Length", "Petal.Length")]                                                             # Calculating group sums 
#       Species Sepal.Length Petal.Length
# 1:     setosa        250.3         73.1
# 2: versicolor        296.8        213.0
# 3:  virginica        329.4        277.6
# Example 3: Using Self-Defined Functions
# Often, we additionally want to use further function arguments or use self-defined functions. We can easily add a self-defined function as follows.

iris_DT[ , lapply(.SD, function (x) { sum(sqrt(x) / 2) }), .SDcols = c("Sepal.Length", "Petal.Length")]                                                # Applying arbitrary function
#    Sepal.Length Petal.Length
# 1:     180.8488     140.5313
# We calculated for each variable x the sum of half of the square root of its values.

# Example 4: Defining New Columns
# Furthermore, we can use lapply together with the definition of new columns, as shown in the following example.

iris_DT <- iris_DT[ , c("Sepal.Length_new", "Petal.Length_new") := lapply(.SD, function (x) { 4*x + 2 }), 
                    .SDcols = c("Sepal.Length", "Petal.Length")]  # Defining new variables
head(iris_DT)          

# For the new columns, we need to specify the column names, “:=” shows that we want to define the new columns by the function on the right-hand side. The function is applied to the columns specified in .SDcols.
# https://data-hacks.com/anna-lena-woelwer
search_lessons("data.table") %>% view()
