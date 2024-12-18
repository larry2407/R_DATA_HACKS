source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Convert Values to Range Between Two Points in R -------------------------

# Create a function that converts values to a range between two points
convert_to_range <- function(x, min_val, max_val) {
  return((x - min(x)) / (max(x) - min(x)) * (max_val - min_val) + min_val)
}

# Apply the function to a numeric vector
my_vector <- c(1, 2, 3, 4, 5)
convert_to_range(my_vector, 0, 1)

# In this R tutorial you’ll learn how to rescale numeric data to a specific range.

# Example Data
set.seed(9873426)                  # Random numeric vector in R
my_x <- rnorm(10)
my_x                               # Show example vector in RStudio
#  [1]  1.39155103 -0.37645116  0.13125429 -0.10452000  0.75198789  0.36461948  0.71728516  0.02688913  1.14031711 -0.72179421
# Example 1: Scale Numerical Values to Range Between 0 & 1

if(!require("scales")) install.packages("scales") # Install & load scales
library("scales")
rescale(my_x)                      # Rescaling data to 0/1 range
convert_to_range(my_x, 0, 1)       # Same result as above
#  [1] 1.0000000 0.1634106 0.4036484 0.2920839 0.6973693 0.5140730 0.6809485 0.3542646 0.8811203 0.0000000
# Example 2: Scale Numerical Values to Range Between Any Two Points
rescale(my_x, to = c(- 10, 20))    # Rescaling data to different range
convert_to_range(my_x, - 10, 20)    # Same result as above
#  [1]  20.000000  -5.097681   2.109453  -1.237482  10.921079   5.422189  10.428456   0.627937  16.433608 -10.000000
# Related Tutorials
# Please find some related tutorials on topics such as extracting data, dplyr, missing data, and variables below.

# Change Values in Column of Data Frame Using dplyr Package
# How to Report NA Values in a Data Frame
# Splitting Data Frame into List Based On Values of Common Variable
# Change Certain Value in Data Frame to Different Values
# Extract Rows of Data Frame in Range of Values

search_lessons("Change") %>% view()
search_lessons("scale") %>% view()
