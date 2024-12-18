source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Convert Row to Header of Data Frame in R --------------------------------

# This page explains how to use a row as column names in the R programming language.

# Example Data
my_df <- data.frame(x = letters[1:3],    # Constructing example data
                    y = letters[2:4],
                    z = letters[3:5])
my_df                                    # Showing example data in RStudio console
#   x y z
# 1 a b c
# 2 b c d
# 3 c d e
# Example: Set First Data Frame Row as Variable Names
colnames(my_df) <- my_df[1, ]           # Using first row as colnames
my_df                                    # Showing new data frame in console
#   a b c
# 1 a b c
# 2 b c d
# 3 c d e
# Related Tutorials & Further Resources
# Here, you can find some additional resources on topics such as matrices, merging, and naming data.
# 
# How to Find Column Name with Highest Value in Each Row
# Merge Rows of Data Frames with Unequal Column Names
# Using apply() Function by Row & Column
# How to Modify Row Names of Matrix & Data Frame

# same using dplyr::rename_with() function
my_df <- data.frame(x = letters[1:3],    # Constructing example data
                    y = letters[2:4],
                    z = letters[3:5])
my_df %>%
  set_names(.[1, ]) -> my_df
my_df                                    # Showing new data frame in console

search_lessons("Find Column Name") %>% view()