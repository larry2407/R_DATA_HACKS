source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Calculate Sum of Two Data Frame Variables in R --------------------------

# Create a data frame
data <- data.frame(x = 1:5, y = 6:10)

# Calculate sum of two variables
data$sum <- data$x + data$y
identical(data$x, data[["x"]]) # TRUE

# Print updated data frame
data

# using dplyr
library(dplyr)
data <- data %>% mutate(sum = x + y)


# Summary: This tutorial illustrated how to calculate the sum of two variables in a data frame in the R programming language.

search_lessons("Calculate") %>% view()# Find other lessons related to this topic
search_lessons("compare") %>% view()# Find other lessons related to this topic
