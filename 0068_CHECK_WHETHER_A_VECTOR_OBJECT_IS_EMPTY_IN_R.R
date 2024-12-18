source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")
# Check whether a Vector Object is Empty in R

# In this tutorial you’ll learn how to evaluate whether a vector object is empty in R programming.

# Creation of Example Data
x <- vector()                      # Constructing an empty example vector
x

# Example: Checking whether Vector is Empty Using the length() Function
length(x) == 0  

# Example: Checking whether Vector is Empty Using the is.null() Function
is.null(x)
# FALSE
is_empty(x)
# TRUE

y <- NULL                         # Constructing another empty example vector
is.vector(y)
# FALSE

z <- c()                          # Constructing another empty example vector
is.vector(z)
str(z)

z <- c(NULL)

search_lessons("empty") %>% view()
