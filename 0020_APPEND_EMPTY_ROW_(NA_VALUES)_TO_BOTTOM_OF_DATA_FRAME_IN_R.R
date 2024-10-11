source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Append Empty Row (NA Values) to Bottom of Data Frame in R (Examp --------
tail(iris) # Preview data frame

# Example: Adding an Empty Row with NA Values to a Data Frame
iris[nrow(iris) + 1, ] <- NA    # Appending an empty row
tail(iris)                      # Print updated iris data frame

# GitHub Copilot use rbind() function to add new row to data frame
rbind(iris, NA)

# And try using dplyr::add_row() function
# library(dplyr) already loaded in the environment
iris_new <- add_row(iris, .before = 0) # Add empty row to the top  of the data frame
head(iris_new)
# add row to the bottom of the data frame
iris_new <- add_row(iris, .before = nrow(iris) + 1) # Add empty row to the bottom of the data frame
tail(iris_new)
# how about using .after argument?
iris_new <- add_row(iris, .after = nrow(iris)) # Add empty row to the bottom of the data frame
tail(iris_new)
# Summary: This tutorial illustrated how to append an empty row with NA values to the bottom of a data frame in the R programming language.

# Related Articles
# You may find some related R programming language tutorials on topics such as missing data, numeric values, variables, and loops in the following list.
# 
# Add New Data Frame Rows for Missing Dates
# Get Row Numbers where Data Frame Variable has Specific Value
# Add New Column to Data Frame in for-Loop in R
# Append New Row to Empty Data Frame
search_lessons("Missing") %>% view()
search_lessons("row") %>% view()
search_lessons("column") %>% view()
search_lessons("empty") %>% view()
search_lessons("null") %>% view()
search_lessons("NaN") %>% view()
search_lessons(" NA ") %>% view()
search_lessons("Inf") %>% view()
search_lessons("option") %>% view()
search_lessons("factor") %>% view()
search_lessons("dplyr") %>% view()
search_lessons("expand.grid") %>% view()
search_lessons("combinations") %>% view()
search_lessons("combine") %>% view()
search_lessons("k-fold") %>% view()
