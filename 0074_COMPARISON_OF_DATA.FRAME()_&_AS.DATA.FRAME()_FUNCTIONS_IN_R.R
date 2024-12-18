source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")
# Comparison of data.frame() & as.data.frame() Functions in R

# In this R tutorial you’ll learn how to apply the data.frame and as.data.frame commands.

# Example 1: Construct a New Data Frame Using the data.frame() Function
my_df_A <- data.frame(A = 4:1,      # Constructing a data frame
                      B = 1:4,
                      C = "x")
my_df_A                           # Print data frame

# Example 2: Convert a Matrix to a Data Frame Using the as.data.frame() Function
my_mat <- matrix(1:12, ncol = 4)    # Constructing a matrix
my_mat   

names(my_mat)

my_df_B <- as.data.frame(my_mat)    # Converting a matrix to a data frame
my_df_B                            # Print data frame

str(my_df_B)                       # Structure of the data frame
# How to name the columns of the my_df_B data frame?
# I can use the colnames() function to name the columns of the data frame.
# I can use the names() function to name the columns of the data frame.
# I can use the setNames() function to name the columns of the data frame.
# I can use the set_colnames() function from the janitor package to name the columns of the data frame.
# I can use the set_names() function from the magrittr package to name the columns of the data frame.

# Explain
as.data.frame(x, row.names = NULL, optional = FALSE, ...,
              cut.names = FALSE, col.names = names(x), fix.empty.names = TRUE,
              check.names = !optional,
              stringsAsFactors = FALSE)

# Arguments
# x
# An R object, typically a matrix or data frame.
# row.names
# NULL or a character vector giving the row names for the data frame.
# optional
# logical. If TRUE, the data frame is allowed to have column names that are not syntactically valid variable names (as determined by make.names).  
# ...
# further arguments to be passed to or from methods.
# cut.names
# logical. If TRUE, the column names are cut down to be syntactically valid variable names.
# col.names
# NULL or a character vector giving the column names for the data frame.
# fix.empty.names
# logical. If TRUE, empty column names are given a name of the form "V" followed by the column number.
# check.names
# logical. If TRUE then the names of the variables in the data frame are checked to ensure that they are syntactically valid variable names.
# stringsAsFactors
# logical: should character vectors be converted to factors? The ‘factory-fresh’ default is TRUE, but this can be changed by setting options(stringsAsFactors = FALSE).

# Example 3: Convert a List to a Data Frame Using the as.data.frame() Function
my_list <- list(A = 1:3,            # Constructing a list
                B = letters[1:3])
my_list

my_df_C <- as.data.frame(my_list)   # Converting a list to a data frame
my_df_C                            # Print data frame

str(my_df_C)                       # Structure of the data frame
# How to convert the data frame back to a list?
# I can use the as.list() function to convert the data frame back to a list.
# I can use the unlist() function to convert the data frame to a vector and then convert it back to a list.
# I can use the list() function to create a new list with the data frame's columns.
# I can use the c() function to concatenate the data frame's columns into a list.
# I can use the append() function to add the data frame's columns to a list.
# I can use the data.table() function to convert the data frame to a data table and then convert it back to a list.
# I can use the tibble() function to convert the data frame to a tibble and then convert it back to a list.
# I can use the dplyr::as_tibble() function to convert the data frame to a tibble and then convert it back to a list.
l_df_C <- as.list(my_df_C)
l_df_C
# Summary: This tutorial illustrated how to use the data.frame and as.data.frame functions in the R programming language.

search_lessons("data.frame") %>% view()