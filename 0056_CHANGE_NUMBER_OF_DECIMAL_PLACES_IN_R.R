source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")
# Change Number of Decimal Places in RChange Number of Decimal Places in R

# The following R code shows how to format the number of decimal places displayed in the RStudio console of the R programming language.

# Example Data
my_number <- 10.7465284658                  # Create example number
my_number

# Change Number of Decimal Places in R
round(my_number, digits = 2)                # Round to two decimal places

# As you can see based on the output of the RStudio console, the default number of displayed digits is 7 (i.e. 2 digits before and 5 digits after the comma).

# Format Decimal Places with format & round Functions
# We can return a number with only 2 decimal places with a combination of the format and round functions:
  
format(round(my_number, 2), nsmall = 2) # Apply format function

# Note that this output is a character string and not a numeric anymore.

# Format Number of Digits in Global Options
# We can also change the global options in our R installation:
  
options(digits = 7)                         # Modify global options
my_number
# Note that this is formatting the number of digits, not the number of decimal places.

search_lessons("decimal") %>% view()
search_lessons("round") %>% view()
search_lessons("format") %>% view()
search_lessons("options") %>% view()
