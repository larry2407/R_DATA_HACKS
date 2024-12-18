source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") 
# Change Name of Vector or Data Frame Object in R

# This post illustrates how to rename data objects in R.

# Creating Example Data
my_x <- 1:5                          # Create vector object
my_x                                 # Show vector in RStudio console
# [1] 1 2 3 4 5
# Example: Store Values of Vector in New Data Object
my_x_new <- my_x                     # Rename data object in R
my_x_new                             # Show new vector object in RStudio console
# [1] 1 2 3 4 5

# Example: Change Name of Data Frame Object
my_df <- data.frame(x = 1:5,         # Create data frame
                    y = letters[1:5])

my_df                                # Show data frame in RStudio console
#   x y
# 1 1 a
# 2 2 b
# 3 3 c
# 4 4 d
# 5 5 e

# Change Name of Data Frame Object
my_df_new <- my_df                   # Rename data frame object in R
my_df_new                            # Show new data frame in RStudio console
# using the assign() function to change the name of a data frame object

# Example: Change Name of Data Frame Object Using assign() Function
assign("my_df_new", my_df)          # Change name of data frame object
my_df_new                           # Show new data frame in RStudio console

# Summary: This tutorial illustrated how to change the name of a vector or data frame object in the R programming language.

# Further Resources
# Have a look at the following tutorials. They explain topics such as lines, graphics in R, data objects, and character strings:
  
# Printing Character String & Data Object on Same Line
# How to Store a Plot in a Data Object Using Base R

search_lessons("Character") %>% view()
search_lessons("assign") %>% view()
