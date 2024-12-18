source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Constructing a Symmetric Matrix in R Programming ------------------------

# In this tutorial you’ll learn how to construct a symmetric matrix object in the R programming language.

# Example: Create Symmetric Matrix Using upper.tri() & lower.tri() Functions
x <- matrix(letters[1:25], nrow = 5)    # Create matrix
x[upper.tri(x)] <- t(x)[upper.tri(x)]   # Add symmetric values
diag(x) <- "x"                          # Replace diagonal
x                                       # Display symmetric matrix
# Related Articles
# Please find some related R programming tutorials on topics such as variables and matrices in the following list.

# How to Create an Empty Matrix
# Create i.i.d. Normal Random Variables in Matrix in R

search_lessons("matri") %>% view()

# what is the upper.tri() function?
  # The upper.tri() function returns a logical matrix that indicates whether the elements of a matrix are in the upper triangular part of the matrix.
  # The following R code illustrates how to use the upper.tri() function:
  # x <- matrix(1:9, nrow = 3) # Create example matrix
  # upper_triangular_part <- upper.tri(x) # Apply upper.tri() function
  # upper_triangular_part # Print logical matrix
# it only makes sense to use the upper.tri() function in a matrix with more than one row and column. Otherwise, the function will return an empty logical matrix. Does the matrix have to be a square matrix? No, the matrix does not have to be a square matrix. The upper.tri() function can be applied to any matrix with more than one row and column. What is the lower.tri() function? The lower.tri() function is the opposite of the upper.tri() function. It returns a logical matrix that indicates whether the elements of a matrix are in the lower triangular part of the matrix. The following R code illustrates how to use the lower.tri() function: x <- matrix(1:9, nrow = 3) # Create example matrix lower_triangular_part <- lower.tri(x) # Apply lower.tri() function lower_triangular_part # Print logical matrix What is the diag() function? The diag() function is used to extract or replace the diagonal of a matrix. The following R code illustrates how to use the diag() function: x <- matrix(1:9, nrow = 3) # Create example matrix diag_values <- diag(x) # Extract diagonal values diag_values # Print diagonal values The diag() function can also be used to replace the diagonal of a matrix. What is the t() function? The t() function is used to transpose a matrix. It returns the transpose of the input matrix. The following R code illustrates how to use the t() function: x <- matrix(1:9, nrow = 3) # Create example matrix transposed_matrix <- t(x) # Transpose matrix transposed_matrix # Print transposed matrix What is the x object? The x object is a matrix object that was created in the example code. It is a 5x5 matrix with the letters of the alphabet from a to y. The x object is used to demonstrate how to construct a symmetric matrix in R programming.


# what is the lower.tri() function?
# what is the diag() function?
# what is the t() function?
# what is the x object?

# in this tutorial, you learned how to construct a symmetric matrix in the R programming language. You also learned how to use the upper.tri() and lower.tri() functions to create a symmetric matrix. If you have any further questions, please let me know in the comments section.

