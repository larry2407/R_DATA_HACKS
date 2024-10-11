source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Applying is.data.frame & as.data.frame Functions in R (2 Example --------

# Creating a data frame in R
data_frame <- data.frame(x = 1:5, y = letters[1:5])
data_frame

# Check if object is a data frame
is.data.frame(data_frame)

# Convert object to data frame
as.data.frame(data_frame)

# In this article you’ll learn how to apply the is.data.frame and as.data.frame functions in the R programming language.

# Example Data
x <- matrix(1:9, nrow = 3)        # Create matrix
x
#      [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9
# Example 1: Check Class of Data Object Using is.data.frame() Function
is.data.frame(x)                  # Test if object is a data frame
# [1] FALSE
# Example 2: Change matrix to data.frame Class Using as.data.frame() Function
my_df <- as.data.frame(x)         # Convert object to data frame
my_df

# Summary: This tutorial illustrated how to check if an object is a data frame and how to convert an object to a data frame in the R programming language.

# What about tibbles?
# I can use the is_tibble() function from the tibble package to check if an object is a tibble.

my_tibble <- tibble::as_tibble(my_df) # Convert object to tibble
is_tibble(my_tibble)                  # Test if object is a tibble
# [1] TRUE
is.data.frame(my_tibble)              # Test if object is a data frame
# [1] TRUE
# I can use the as.data.frame() function to convert a tibble to a data frame.

my_tibble_as_df <- as.data.frame(my_tibble)              # Convert tibble to data frame
is_tibble(my_tibble_as_df)                               # Test if object is a tibble
# [1] FALSE
is.data.frame(my_tibble_as_df)                           # Test if object is a data frame
# [1] TRUE
# my_tibble was both a tibble and a data frame, but my_tibble_as_df is only a data frame.

search_lessons("is\\.") %>% view()
search_lessons("as\\.") %>% view()
# search_lessons("is_") %>% view()
# search_lessons("as_") %>% view()
search_lessons("warning") %>% view()
search_lessons("error") %>% view()
# https://statisticsglobe.com/errors-warnings-r
search_lessons("outl") %>% view()
search_lessons("scan") %>% view()
