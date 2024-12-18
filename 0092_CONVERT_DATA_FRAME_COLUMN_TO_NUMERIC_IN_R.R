source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Convert Data Frame Column to Numeric in R -------------------------------

# The following R codes show how to convert data frame columns to numeric in the R programming language.

# Example Data Frame
my_data <- data.frame(char = c("3", "75", "10", "8"),        # Create example data
                      fact = factor(c("3", "1", "5", "5")),
                      stringsAsFactors = FALSE)

str(my_data)                                                  # Structure of data frame

my_data                                                      # Print data to console
# char fact
#    3    3
#   75    1
#   10    5
#    8    5
# Check data classes of our two columns:
  
class(my_data$char)                                          # Check class of first column
typeof(my_data$char)                                          # Check class of first column
# "character"

class(my_data$fact)                                          # Check class of second column
# "factor"
# Example 1: Conversion of Character Column to Numeric
my_data$char <- as.numeric(my_data$char)                     # Character column to numeric
# Check updated class of character column:
  
class(my_data$char)
# "numeric"
# Example 2: Conversion of Factor Column to Numeric
my_data$fact <- as.numeric(as.character(my_data$fact))       # Factor column to numeric
# Check updated class of factor column:
  
class(my_data$fact)
# "numeric"

# see
# https://www.youtube.com/watch?time_continue=3&v=6cwCaPZrHS8&embeds_referring_euri=https%3A%2F%2Fdata-hack.com%2F&themeRefresh=1

# using mutate() function from dplyr package
library(dplyr)                                                # Load dplyr package
my_data <- my_data %>%                                        # Convert factor column to numeric
  mutate(fact = as.numeric(as.character(fact)),
         char = as.numeric(char))
# Check updated class of factor column:

class(my_data$fact)

# In this R tutorial, you learned how to convert data frame columns to numeric in the R programming language. If you have any additional questions, please let me know in the comments section.
# The resources above will be added soon.

search_lessons("convert") %>% view()
search_lessons("factor") %>% view()
search_lessons("dplyr") %>% view()

