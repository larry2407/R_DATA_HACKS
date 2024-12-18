iris_bis <- iris
iris_bis[] <- lapply(iris, function(x) { paste("new", x) })  # Using lapply() function
head(iris_bis)

iris_ter <- iris
iris_ter <- lapply(iris, function(x) { paste("new", x) })  # Using lapply() function
head(iris_ter)

# what is the difference between the two?

# The first one is using the [] operator to replace the content of the data frame, while the second one is using the assignment operator to replace the content of the data frame. The first one is more concise and easier to read, while the second one is more explicit and easier to understand.

# The first one is more efficient because it directly modifies the data frame in place, while the second one creates a new data frame and assigns it to the original data frame variable. The first one is also more idiomatic in R, as it is a common pattern to use the [] operator to modify data frames.

str(iris_bis)
str(iris_ter)

is.data.frame(iris_bis)
is.data.frame(iris_ter) # The second one is not a data frame, it is a list of vectors
