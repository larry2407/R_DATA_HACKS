source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# cbind Function in R -----------------------------------------------------

# Create example data
# This article explains how to column bind a data frame and a vector with the cbind function in the R programming language.

# Example Data
# In this example, we use the following data frame:
  
  my_data <- data.frame(x1 = 1:5,             # Create first data frame
                        x2 = letters[1:5])
  my_data                                    # Print first data frame  

  # We also use the following vector:
    
  my_vec <- c(9, 1, 8, 2, 5)                  # Create vector
  my_vec  # Print vector  
  
  # Application of cbind Function in R
  # We can combine our data frame and our vector by column with the cbind function as shown below:
    
  combined_data <- cbind(my_data, my_vec)     # Apply cbind function
  combined_data
# same using dplyr::bind_cols()
  combined_data2 <- dplyr::bind_cols(my_data, my_vec)     # Apply cbind function
  combined_data2 
# The output of the previous R syntax is a new data frame containing the columns of our data frame and the vector:
#   x1 x2 my_vec
# 1  1  a      9
# 2  2  b      1
# 3  3  c      8
# 4  4  d      2
# 5  5  e      5

# The cbind function is a base R function that is used to combine data frames and vectors by column.
# In this tutorial, I have illustrated how to use the cbind function in the R programming language.

# How to name columns with bind_cols() function in R?
# The bind_cols() function from the dplyr package does not allow you to name the columns of the vector that you are binding to the data frame. 
# However, you can use the colnames() function to name the columns of the resulting data frame as shown below:

  colnames(combined_data2) <- c(colnames(my_data), "my_vec")  # Name columns
  combined_data2
# is colnames() function the same as names() function?
# The colnames() function is a base R function that is used to get or set the column names of a matrix or data frame. The names() function is a base R function that is used to get or set the names of a vector. The main difference between the two functions is that the colnames() function is used for matrices and data frames, while the names() function is used for vectors.
identical(colnames(combined_data2), names(combined_data2))
# The output of the previous R syntax is TRUE, which means that the colnames() function and the names() function are the same in this case.

# https://www.youtube.com/watch?v=lVIegAHJe0Y

search_lessons("bind") %>% view()
  