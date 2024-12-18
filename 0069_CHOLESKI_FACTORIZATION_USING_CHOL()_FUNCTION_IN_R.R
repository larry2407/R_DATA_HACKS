source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")
# Choleski Factorization Using chol() Function in R

# Create a matrix
my_matrix <- matrix(c(1, 2, 3, 2, 8, 11, 3, 11, 42), nrow = 3, byrow = TRUE)

# Perform Choleski factorization
my_matrix_choleski <- chol(my_matrix)

# Print Choleski factorization
my_matrix_choleski

# Check if Choleski factorization is correct
my_matrix_choleski %*% t(my_matrix_choleski)
# The %*% operator is used to perform matrix multiplication in R.

# should be equal to the original matrix

# other example
x <- matrix(c(9, 1, 1, 3),        # Matrix in R
            nrow = 2)
x_choleski <- chol(x)             # Choleski factorization

x_choleski                        # Print Choleski factorization

x_choleski %*% t(x_choleski)      # Check if Choleski factorization is correct
# The %*% operator is used to perform matrix multiplication in R.

search_lessons("mat") %>% view()

# Summary: The chol function can be used to perform Choleski factorization in the R programming language.
