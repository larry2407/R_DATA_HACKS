source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# colSums, colMeans, rowSums & rowMeans in R ------------------------------
# colSums, colMeans, rowSums & rowMeans in R are functions that allow us to calculate the column sums, column means, row sums, and row means of a matrix or data frame in the R programming language.

# Create example matrix
my_matrix <- matrix(1:12, nrow = 3, ncol = 4)
my_matrix

# Calculate column sums
colSums(my_matrix)

# Calculate column means
colMeans(my_matrix)

# Calculate row sums
rowSums(my_matrix)

# Calculate row means
rowMeans(my_matrix)

# Summary: This tutorial showed how to calculate the column sums, column means, row sums, and row means of a matrix or data frame in the R programming language.

# This page shows how to apply the colSums, colMeans, rowSums, and rowMeans functions to compute the sums and means of all columns and rows of a data frame in the R programming language.

# Example Data
my_data <- data.frame(x = c(3, 7, 1, 5),
                      y = c(9, 5, 2, 8),
                      z = c(1, 9, 1, 4))
colSums(my_data)
colMeans(my_data)
rowSums(my_data)
rowMeans(my_data)

# see video on this topic: https://www.youtube.com/watch?v=3J5Q4vX3XyQ not available
# https://youtu.be/xFzSL2JHgko

search_lessons("colSums") %>% view()