source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Convert Numeric to Unit Object in R – unit() Function -------------------

# In this R tutorial you’ll learn how to create a unit object using the unit() function.

# Example: Convert Numeric Vector to Unit Object in R [unit() Function]
grid::unit(10:15, "mm")        # Applying the unit function
# [1] 10mm 11mm 12mm 13mm 14mm 15mm

?unit                   # Documentation of the unit function
str(unit(10:15, "mm") ) # Structure of the unit object

# Which package is the unit() function from?
# The unit() function is part of the "units" package. This package provides a class for units of measurement in R. You can install the "units" package from CRAN using the following R code: install.packages("units"). After installing the package, you can load it to your R session using the following R code: library(units).

# How do I know whether a package is installed in R?  
# You can check whether a package is installed in R using the following R code: installed.packages(). This function returns a data frame with all installed packages. If the package is installed, it will be listed in the data frame. If the package is not installed, it will not be listed in the data frame.

# How do I know whether a package is loaded in R?
# You can check whether a package is loaded in R using the following R code: search(). This function returns a character vector with all loaded packages. If the package is loaded, it will be listed in the character vector. If the package is not loaded, it will not be listed in the character vector.

search()                # Check loaded packages
# [1] ".GlobalEnv"        "package:units"     "package:base"

# My unit function comes from the package "grid" not "units"
# I can install the "units" package from CRAN using the following R code: install.packages("units")
# It won't be necessary to load the package because the grid::unit() function is the same as units::unit()
# I can use the unit() function from the "grid" package to create a unit object in R

# Summary: This tutorial illustrated how to convert a numeric vector to a unit object in the R programming language.

# Further Resources & Related Tutorials
# Have a look at the following list of tutorials. They explain topics such as data types, data frames, and vectors in the R programming language.

search_lessons("type") %>% view()
search_lessons("data frame") %>% view()
search_lessons("vector") %>% view()
search_lessons("unit") %>% view()