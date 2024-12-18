source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Calculate Sum by Group & Assign as New Variable to Data Frame in --------

# Example data

# This article explains how to get the mean by group and assign the output as a new variable to a data frame in R.
# 
# Creation of Example Data
head(iris) # preview the iris data frame

# Example: Append Sum by Group as a New Variable to a Data Frame Using the dplyr Package
# install.packages("dplyr")   # Install dplyr package
# library("dplyr")            # Load dplyr # already loaded
iris_new <- iris %>%        # Computing mean by group
  group_by(Species) %>%
  mutate(SL_sum = sum(Sepal.Length))
head(iris_new)
str(iris_new)

new_iris <- iris %>% 
  group_by(Species) %>% 
  mutate(across(where(is.numeric), \(x) sum(x, na.rm = TRUE)))
head(new_iris)
# how to name the columns SL_sum, SW_sum, PL_sum, PW_sum?
# The columns can be named SL_sum, SW_sum, PL_sum, and PW_sum by using the rename() function from the dplyr package. The rename() function allows you to rename columns in a data frame. The following code snippet demonstrates how to rename the columns in the new_iris data frame:

new_iris <- new_iris %>% 
  rename(SL_sum = Sepal.Length, 
         SW_sum = Sepal.Width, 
         PL_sum = Petal.Length, 
         PW_sum = Petal.Width)
# How can I name the new columns within the first mutate(across) ?
# The new columns can be named within the first mutate(across) by using the .names argument. The .names argument allows you to specify the names of the new columns. The following code snippet demonstrates how to name the new columns within the first mutate(across):

new_iris <- iris %>% 
  group_by(Species) %>% 
  mutate(across(where(is.numeric), 
                \(x) sum(x, na.rm = TRUE), 
                .names = "{col}_sum"))
head(new_iris)
# What kind of syntax is allowed in the .names argument apart from {col}?
# Apart from {col}, the .names argument allows you to use the following placeholders:

# {col}: The name of the column
# {fn}: The name of the function
# {fn}_{col}: The name of the function and the column
# {col}_sum: The name of the column with a suffix
# {col}_sum_{fn}: The name of the column with a suffix and the function
# The following code snippet demonstrates how to use the {fn} placeholder in the .names argument:

new_iris <- iris %>% 
  group_by(Species) %>% 
  mutate(across(where(is.numeric), 
                \(x) sum(x, na.rm = TRUE), 
                .names = "{fn}_{col}"))
# so there no way of naming automatically SL_sum, SW_sum, PL_sum, PW_sum?
# The .names argument in the mutate(across) function does not allow you to automatically name the new columns SL_sum, SW_sum, PL_sum, and PW_sum. However, you can use the rename() function from the dplyr package to rename the columns after creating them. The following code snippet demonstrates how to rename the columns in the new_iris data frame:

new_iris <- new_iris %>% 
  rename(SL_sum = Sepal.Length, 
         SW_sum = Sepal.Width, 
         PL_sum = Petal.Length, 
         PW_sum = Petal.Width)


# # Previously
# across(a:b, mean, na.rm = TRUE)
# 
# # Now
# across(a:b, \(x) mean(x, na.rm = TRUE))
# This warning is displayed once every 8 hours.
# Call `lifecycle::last_lifecycle_warnings()` to see where this warning was generated.

# Summary: This tutorial illustrated how to calculate the sum by group and assign the output as a new variable to a data frame in the R programming language.

# Further Resources & Related Articles
# Have a look at the following list of tutorials. They explain topics such as indices, extracting data, vectors, and groups.
# Related Articles
# Have a look at the following R tutorials. They discuss topics such as dplyr, vectors, loops, and missing data.
# 
# Append Vector as New Row to Data Frame
# Add New Data Frame Rows for Missing Dates
# Calculate Correlation of One Data Frame Column to All Others
# Add Lagged Column by Group to Data Frame Using dplyr
# Add New Column to Data Frame in for-Loop

search_lessons("Append") %>% view()
search_lessons("Row") %>% view()
search_lessons("lag") %>% view()
