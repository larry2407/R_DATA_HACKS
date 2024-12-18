source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Change Certain Value in Data Frame to Different Values in R -------------

# Create Example Data

# On this page you’ll learn how to replace particular values in a data frame to different values in R.

# Example Data
my_df <- data.frame(x = c("a", "a", "a", "b", "b", "b"),      # Create example data
                    y = c("a", "b", "a", "b", "a", "b"),
                    stringsAsFactors = FALSE)
my_df                                                         # Return data to console

# Replace Values in Data Frame
my_df[my_df == "a"] <- "new_a"                                    # Replace "a" by "new_a"  
my_df
# Using dplyr package
if(!require("dplyr")) install.packages("dplyr")                   # Install & load dplyr
library("dplyr")
my_df <- data.frame(x = c("a", "a", "a", "b", "b", "b"),          # Create example data
                    y = c("a", "b", "a", "b", "a", "b"),
                    stringsAsFactors = FALSE)
my_df %>% mutate_all(~replace(., . == "a", "new_a"))              # Replace "a" by "new_a" in all columns
# mutate_all() function is superseded by across() function

# Replace Values in Data Frame with Multiple Conditions
my_df <- data.frame(x = c("a", "a", "a", "b", "b", "b"),          # Create example data
                    y = c("a", "b", "a", "b", "a", "b"),
                    stringsAsFactors = FALSE)

# using across() function
my_df %>% mutate(across(everything(), ~replace(., . == "a", "new_a"))) # Replace "a" by "new_a" in all columns

search_lessons("replace") %>% view()
