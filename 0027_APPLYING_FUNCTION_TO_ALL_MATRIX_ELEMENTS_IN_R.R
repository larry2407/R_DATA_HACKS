source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Applying Function to All Matrix Elements in R (Example Code) ------------

# Create example matrix
matrix_data <- matrix(1:9, nrow = 3)
matrix_data

# Apply function to all matrix elements
mat12 <- apply(matrix_data, c(1, 2), function(x) x^2) # Apply function to all matrix elements
mat1 <- apply(matrix_data, c(1), function(x) x^2) 
mat2 <- apply(matrix_data, c(2), function(x) x^2) 

mat2
identical(mat1, t(mat12))
identical(mat2, mat12)
# Apply function to all matrix elements (alternative)
sapply(matrix_data, function(x) x^2)

# Apply function to all matrix elements (alternative)
matrix_data^2

# In this tutorial, I’ll explain how to apply a function or command to all matrix elements in R programming.

# Example Data
my_matrix <- matrix(10:29, ncol = 5)    # Example matrix in R
my_matrix                               # Print example matrix to RStudio console

# Apply Function to All Matrix Elements
# Example: Create Own Function & Apply to Each Matrix Element
own_function <- function(x) {           # User-defined function in R
  (x / 5 + 30) * x
}
apply(my_matrix,                        # Applying own function to each matrix element
      c(1, 2),
      own_function)
apply(my_matrix,                        # Applying own function to each matrix element
      c(1),
      own_function)
apply(my_matrix,                        # Applying own function to each matrix element
      c(2),
      own_function)


# Summary: This tutorial illustrated how to apply a function to all elements of a matrix in the R programming language.
other_matrix <- matrix(sample(40), nrow = 20, byrow = TRUE)
other_matrix
apply(other_matrix, c(1, 2), function(x) x^2)

# I can use the apply() function to apply a function to all elements of a matrix in R.
# I can use the sapply() function to apply a function to all elements of a matrix in R.
# I can use the lapply() function to apply a function to all elements of a matrix in R.
# I can use the mapply() function to apply a function to all elements of a matrix in R.
# I can use the vapply() function to apply a function to all elements of a matrix in R.
# I can use the tapply() function to apply a function to all elements of a matrix in R.
# I can use the rapply() function to apply a function to all elements of a matrix in R.
# I can use the eapply() function to apply a function to all elements of a matrix in R.

# apply function help -----------------------------------------------------

### ** Examples

## Compute row and column sums for a matrix:
x <- cbind(x1 = 3, x2 = c(4:1, 2:5))
dimnames(x)[[1]] <- letters[1:8]
apply(x, 2, mean, trim = .2)
col.sums <- apply(x, 2, sum)
row.sums <- apply(x, 1, sum)
elt.sums <- apply(x, c(1,2), sum)
identical(elt.sums, x)
rbind(cbind(x, Rtot = row.sums), Ctot = c(col.sums, sum(col.sums)))
stopifnot( apply(x, 2, is.vector))

## Sort the columns of a matrix
apply(x, 2, sort)
## keeping named dimnames
names(dimnames(x)) <- c("row", "col")
x3 <- array(x, dim = c(dim(x),3),
            dimnames = c(dimnames(x), list(C = paste0("cop.",1:3))))
identical(x,  apply( x,  2,  identity))
identical(x3, apply(x3, 2:3, identity))
## Don't show: 
xN <- x; dimnames(xN) <- list(row=NULL, col=NULL)
x2 <- x; names(dimnames(x2)) <- NULL
fXY <- function(u) c(X=u[1], Y=u[2])
ax1 <- apply(x, 1, fXY)
ax2 <- apply(x2,1, fXY)
stopifnot(identical(dimnames(ax1), list(col=c("X.x1", "Y.x2"), row=letters[1:8])),
          identical(dimnames(ax2), unname(dimnames(ax1))),
          identical( x, apply( x, 2, identity)),
          identical(xN, apply(xN, 2, identity)),
          identical(dimnames(x),
                    dimnames(apply(x, 2, format))),
          identical(x3, apply(x3, 2:3, identity)),
          identical(dimnames(apply(x3, 2:1, identity)),
                    dimnames(x3)[3:1]))
rm(xN, x2, fXY, ax1, ax2)
## End(Don't show)
##- function with extra args:
cave <- function(x, c1, c2) c(mean(x[c1]), mean(x[c2]))
apply(x, 1, cave,  c1 = "x1", c2 = c("x1","x2"))
ma <- matrix(c(1:4, 1, 6:8), nrow = 2)
ma
apply(ma, 1, table)  #--> a list of length 2
apply(ma, 1, stats::quantile) # 5 x n matrix with rownames
stopifnot(dim(ma) == dim(apply(ma, 1:2, sum)))

## Example with different lengths for each call
z <- array(1:24, dim = 2:4)
zseq <- apply(z, 1:2, function(x) seq_len(max(x)))
zseq         ## a 2 x 3 matrix
typeof(zseq) ## list
dim(zseq) ## 2 3
zseq[1,]
apply(z, 3, function(x) seq_len(max(x)))
# a list without a dim attribute

search_lessons("apply") %>% view()
