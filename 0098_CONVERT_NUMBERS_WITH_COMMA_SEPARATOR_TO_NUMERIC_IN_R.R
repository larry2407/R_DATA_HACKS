source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Convert Numbers with Comma Separator to Numeric in R --------------------

# In this R tutorial you’ll learn how to change thousand separators from comma to point.

# Example Data
x <- "11,222"                            # Constructing example data object
x                                        # Printing example data object
# Example: Adjusting Data Object with Comma as Thousand Separator
x_new <- as.numeric(gsub(",", "", x))    # Modifying example data object
x_new                                    # Printing new data object
# Summary: This tutorial illustrated how to convert numbers with a comma separator to numeric in the R programming language.

# using stringr package
if(!require("stringr")) install.packages("stringr")
library("stringr")
x_new <- as.numeric(str_replace_all(x, ",", ""))
x_new

# or replacing "," with "." and then converting to numeric
x_new <- as.numeric(gsub(",", ".", x))
x_new

# or with stringr package
x_new <- as.numeric(str_replace_all(x, ",", "."))
x_new

# is stringr part of tidyverse?
# Yes, stringr is part of the tidyverse. The tidyverse is a collection of R packages that share common principles and are designed to work together. The stringr package is part of the tidyverse and provides functions for working with strings in R. Other packages in the tidyverse include dplyr, ggplot2, tidyr, readr, purrr, and forcats.

# Further Resources & Related Tutorials
# Have a look at the following list of R programming tutorials. They illustrate topics such as indices, extracting data, vectors, and groups.

# Convert Categorical Data Frame Column to Numeric / Integer
# Convert Data Frame Column to Numeric in R
search_lessons("Convert") %>% view()
