source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# attach() Warning in R: The following objects are masked (2 Examples)---------
# In this tutorial, I’ll show how to deal with the attach function warning “The following objects are masked” in the R programming language.

# Creating Example Data
iris_A <- iris[1:50, ]        # Create two iris subsets
iris_B <- iris[51:100, ]
# Example 1: Replicating the Warning – The following objects are masked
attach(iris_A)                # Applying attach()
attach(iris_B)                # Applying attach()

Sepal.Length

# The following objects are masked from iris_A:
#   
#   Petal.Length, Petal.Width, Sepal.Length, Sepal.Width, Species
# do not use attach() function in R consecutively

# Example 2: Solving the Warning – The following objects are masked
attach(iris_A)                # Applying attach()
detach(iris_A)                # Applying detach()
attach(iris_B)                # Applying attach()
# The following objects are masked from iris_A:
detach(iris_B)                # Applying detach()

search_lessons("attach") %>% view()
search_lessons("detach") %>% view()
