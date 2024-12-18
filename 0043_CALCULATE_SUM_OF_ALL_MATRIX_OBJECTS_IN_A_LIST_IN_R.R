source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Calculate Sum of All Matrix Objects in a List in R ----------------------

# Create a list of matrices
matrices <- list(matrix(1:4, nrow = 2), matrix(5:8, nrow = 2), matrix(9:12, nrow = 2))

# Calculate the sum of all matrices in the list
sum_of_matrices <- Reduce(`+`, matrices)

# Print the sum of all matrices in the list
print(sum_of_matrices)

# Output:
#      [,1] [,2]
# [1,]   15   18
# [2,]   21   24

# Explanation:
# The sum of all matrices in the list is calculated by using the Reduce function with the `+` operator.
# The resulting matrix is the element-wise sum of all matrices in the list.

# GitHub Copilot used Reduce() function to calculate sum of all matrix objects in a list
# Another way to achieve the same result is to use the apply() function with the sum() function
# Another way to achieve the same result is to use a for-loop to iterate over the list of matrices and calculate the sum manually
# Another way to achieve the same result is to use the purrr package's reduce() function
# Another way to achieve the same result is to use the purrr package's map() function with the reduce() function
# Another way to achieve the same result is to use the purrr package's map() function with the reduce2() function

check0 <- purrr::map(matrices, sum) %>% purrr::reduce(`+`) # this is NOT AT ALL the same as the code above
check <- matrices %>% purrr::reduce(`+`) # this is the same as the code above
# Summary: This tutorial demonstrated how to calculate the sum of all matrix objects in a list in the R programming language.
check

# Another example
x <- list(matrix(1:9, nrow = 3),    # Construct list of matrix objects
          matrix(2:10, nrow = 3),
          matrix(3:11, nrow = 3),
          matrix(4:12, nrow = 3))

Reduce("+", x)                      # Get sum of all matrices in list

# same result using purrr package
mat <- purrr::reduce(x, `+`)
str(mat)
# same result using apply() function
apply(simplify2array(x), 1:2, sum)

# same result using lapply() function
Reduce("+", lapply(x, as.matrix))

# Related Articles
# Below, you can find some further resources on topics such as descriptive statistics and lists.
# 
# How to Sum List Items
# How to Create a List of Multiple Matrices in R

search_lessons("Items") %>% view()
search_lessons("list") %>% view()
