source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Convert Radians to Degree & Back in R Programming -----------------------

# In this tutorial you’ll learn how to transform radian to degree and vice versa in R programming.

# Setting up the Examples
# if(!requireNamespace("units", quietly = TRUE)) {  # Install and load units package
#   install.packages("units")
# }
# What is the difference between require and requireNamespace?

# require() is a function that loads a package and attaches it to the search path. If the package is not available, require() returns an error message. requireNamespace() is a function that checks if a package is available without attaching it to the search path. If the package is not available, requireNamespace() returns FALSE.

if(!require("units")) install.packages("units")
library(units)

my_radians <- as_units(c(3.43, 7.15, 6.22), "radians")  # Create example radians
my_radians
# Units: [rad]
# [1] 3.43 7.15 6.22
# Example 1: Transforming Radians to Degree Using set_units() Function of units Package
my_degree <- set_units(my_radians, "degrees")           # Converting radians to degree
my_degree
str(my_degree)
# Units: [°]
# [1] 196.5245 409.6648 356.3797
# Example 2: Transforming Degree to Radians Using set_units() Function of units Package
my_radians_b <- set_units(my_degree, "radians")         # Converting degree to radians
my_radians_b
# Units: [rad]

# in this snippet, the function set_units() is used to convert radians to degrees and vice versa. The units package is used to handle the units of the values. The function as_units() is used to create a vector of radians. The function set_units() is used to convert radians to degrees and degrees to radians. The str() function is used to display the structure of the object. The output shows the values in radians and degrees.

# In this tutorial, you learned how to convert radians to degrees and vice versa in the R programming language. You also learned how to use the units package to handle the units of the values.

search_lessons("unit") %>% view()