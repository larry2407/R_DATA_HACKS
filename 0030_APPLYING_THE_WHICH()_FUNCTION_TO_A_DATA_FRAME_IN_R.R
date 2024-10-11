source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Applying the which() Function to a Data Frame in R (Example Code) -------

# This post demonstrates how to apply the which function to a data frame in R programming.
# 
# Construction of Example Data

data <- data.frame(x = 1:10, y = 11:20)  # Create example data frame
data                                     # Print example data frame

# Applying which() Function to Data Frame
which(data$x > 5)                        # Apply which() function to data frame

# The output of the RStudio console shows that the which function returns the indices of the elements that are greater than 5 in the first column of our data frame.
which(data > 5, arr.ind = TRUE)          # Apply which() function to data frame with arr.ind argument

# The output of the RStudio console shows that the which function returns the row and column indices of the elements that are greater than 5 in our data frame.
# another example
head(iris) # preview the iris data frame

# Example: Extract Certain Rows of Data Frame Using which() Function
iris_subset <- iris[which(iris$Sepal.Length >= 7), ]  # Logical condition in which function
iris_subset
which(iris$Sepal.Length >= 7)
which(iris$Sepal.Length >= 7, arr.ind = TRUE)
# The output of the RStudio console shows that the which function returns the row indices of the elements that are greater than or equal to 7 in the Sepal.Length column of our data frame.
# Now the same instruction using dplyr::filter() function
library(dplyr) # Load dplyr package
iris_subset_dplyr <- iris %>% filter(Sepal.Length >= 7)  # Filter data frame
iris_subset_dplyr

search_lessons("filter") %>% view()
search_lessons("extract") %>% view()
