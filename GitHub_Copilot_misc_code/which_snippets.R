vec <- c(1, 2, 3, 4, 5, 1)
which.min(vec)
# only the first minimum is returned
# however, we can use the following code to get all the indices of the minimum values
which(vec == min(vec))

# or we can use the following code to get the indices of the first n minimum values
n <- 2
order(vec)[1:n]

# or we can use the following code to get the indices of the last n minimum values
order(vec, decreasing = TRUE)[1:n]

# or we can use the following code to get the indices of the first n minimum values
n <- 2
which(vec %in% sort(unique(vec))[1:n])

# or we can use the following code to get the indices of the last n minimum values

which(vec %in% sort(unique(vec), decreasing = TRUE)[1:n])

# now a random matrix 5 rows 6 columns
mat <- matrix(sample(1:100, 30), nrow = 5)
mat
# get the indices of the minimum values in each column
apply(mat, 2, which.min)

# get the indices of the minimum values in each row
apply(mat, 1, which.min)

# get the indices of the maximum values in each column
apply(mat, 2, which.max)

# get the indices of the maximum values in each row
apply(mat, 1, which.max)

# get the indices of the first n minimum values in each column
n <- 2
apply(mat, 2, function(x) order(x)[1:n])

# get the indices of the minimum value of the whole matrix
which(mat == min(mat))
which(mat == min(mat), arr.ind = TRUE)
which.min(mat) == nrow(mat) * (which(mat == min(mat), arr.ind = TRUE)[2] - 1) + which(mat == min(mat), arr.ind = TRUE)[1] 
names(which(mat == min(mat), arr.ind = TRUE))
attributes(which(mat == min(mat), arr.ind = TRUE))
colnames(which(mat == min(mat), arr.ind = TRUE))
rownames(which(mat == min(mat), arr.ind = TRUE))
