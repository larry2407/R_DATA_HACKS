source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Append New Row to Empty Data Frame in R (Example Code) ------------------

## Create empty data frame
my_df1 <- data.frame(time = as.Date(character(0)), x1 = numeric(0), x2 = character(0)) 
my_df1 # Print empty data frame
my_df2 <- data.frame(NULL) # Create empty data frame
my_df2 # Print empty data frame
identical(my_df1, my_df2) # Check if both data frames are identical
# [1] FALSE
# When two objects are not identical, how to proceed in order to make them identical?
# The following code will make the two data frames identical
my_df2 <- my_df1
identical(my_df1, my_df2) # Check if both data frames are identical
# [1] TRUE
# So let me rephrase: when two objects are not identical, how to proceed in order to see their differences?
# The following code will make the two data frames different
my_df2 <- data.frame(time = as.Date(character(0)), x1 = numeric(0), x2 = character(0))
identical(my_df1, my_df2) # Check if both data frames are identical
# [1] FALSE
# The following code will show the differences between the two data frames
all.equal(my_df1, my_df2) # Check if both data frames are equal
# [1] TRUE
# The following code will show the differences between the two data frames
all.equal(my_df1, my_df2, check.attributes = FALSE) # Check if both data frames are equal
# [1] "Attributes: < Component “row.names”: target is character, current is NULL >"
# The following code will show the differences between the two data frames
all.equal(my_df1, my_df2, check.attributes = TRUE) # Check if both data frames are equal
# [1] "Attributes: < Component “row.names”: target is character, current is NULL >"
# The following code will show the differences between the two data frames
all.equal(my_df1, my_df2, check.attributes = TRUE, check.names = TRUE) # Check if both data frames are equal
# [1] "Attributes: < Component “row.names”: target is character, current is NULL >"
# The following code will show the differences between the two data frames
args(all.equal) # Check the arguments of the all.equal() function
# args(all.equal) is of no use in this case better do ?all.equal
# function (target, current, ...)
# check the structure of both objects
str(my_df1) # Check the structure of the data frame
# 'data.frame':	0 obs. of  3 variables:
#  $ time: Date, format: NA
#  $ x1  : num
#  $ x2  : Factor w/ 0 levels:
str(my_df2) # Check the st
# Creating Example Data
my_df <- data.frame(v = numeric(0),    # Empty data frame in R
                    w = numeric(0),
                    x = numeric(0),
                    y = numeric(0),
                    z = numeric(0))
my_df                                  # Show empty data in RStudio
# [1] v w x y z
# <0 rows> (or 0-length row.names)
# Example: Use Index Position to Append Row to Empty Data Frame
my_df[1, ] <- c(5, 1, 3, 7, 0)         # Adding new row
my_df                                  # Showing new data frame with row
#   v w x y z
# 1 5 1 3 7 0
# Related Articles & Further Resources
# You may find some related R programming language tutorials on topics such as matrices, variables, and numeric values in the following list.
# 
# How to Modify Row Names of Matrix & Data Frame
# Deleting First Row of Data Frame in R
# Get Row Numbers where Data Frame Variable has Specific Value
# How to Return a Row of a Data Frame Based On a Variable
# Summary: This tutorial illustrated how to append a new row to an empty data frame in the R programming language. If you have any additional questions, please let me know in the comments section.
# The resources above will be added soon.

search_lessons("Modify Row Names of Matrix & Data Frame") %>% view()
search_lessons("delet") %>% view()
search_lessons("remov") %>% view()
search_lessons("Get") %>% view()
search_lessons("Return") %>% view()
search_lessons("create") %>% view()
search_lessons("mak") %>% view()
search_lessons("constr") %>% view()
search_lessons("init") %>% view()
search_lessons("modif") %>% view()
search_lessons("chang") %>% view()
search_lessons("writ") %>% view()

# add a row to an empty data frame using dplyr::add_row() function
my_df <- data.frame(v = numeric(0),    # Empty data frame in R
                    w = numeric(0),
                    x = numeric(0),
                    y = numeric(0),
                    z = numeric(0))
# library(dplyr) already loaded in the environment
my_df <- add_row(my_df, v = 5, w = 1, x = 3, y = 7, z = 0)
args(add_row) # Check the arguments of the add_row() function)
# function (.data, ..., .before = NULL, .after = NULL, .row = NULL)
# add a row name?
my_df # Show new data frame with row
#   v w x y z
# 1 5 1 3 7 0
# Check if the result is a data frame
is.data.frame(my_df) # Check if the result is a data frame
# [1] TRUE
# Check if the result is a tibble
is_tibble(my_df) # Check if the result is a data frame
# [1] FALSE
typeof(row.names(my_df)) # check the type of row.names attribute of my_df
# Can tibbles have row names?
row.names(as_tibble(my_df))
# yes, tibbles can have row names, but always of type character