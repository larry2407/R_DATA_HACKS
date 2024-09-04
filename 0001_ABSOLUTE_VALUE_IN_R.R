# from https://data-hacks.com/r-programming-language
# from https://statisticsglobe.com/absolute-value-in-r # page not found
# I keep URLs gien by GitHub Copilot in comments in case I need to refer back to them, even if they are not accessible.
# their main page might be of interest.
# Absolute Value in R (Example) -------------------------------------------
# example 1
# of how to calculate the absolute value of a vector in R
x <- c(-5, 9, 3, -1, 2)      # Create example vector
x_abs <- abs(x)               # Calculate absolute value of x
print(x_abs)                  # Print result

# example 2
# of how to calculate the absolute value of a matrix in R
mat <- matrix(-9:5, nrow = 3, ncol = 5)  # Create example matrix
# reminders: matrix(data, nrow, ncol, byrow, dimnames)
mat # default argument for matrix is byrow = FALSE
str(mat) # check the structure of the matrix)
attributes(mat) # check the attributes of the matrix
attr(mat, "dim") # check the dimension of the matrix
attr(mat, "dimnames") # check the dimension names of the matrix
attr(mat, "class") # check the class of the matrix
attr(mat, "row.names") # check the row names of the matrix
attr(mat, "col.names") # check the column names of the matrix
attr(mat, "names") # check the names of the matrix
attr(mat, "tsp") # check the tsp of the matrix
attr(mat, "levels") # check the levels of the matrix
attr(mat, "call") # check the call of the matrix
attr(mat, "terms") # check the terms of the matrix
attr(mat, "offset") # check the offset of the matrix

mat_abs <- abs(mat)                       # Calculate absolute value of mat
mat_abs

