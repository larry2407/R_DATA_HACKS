source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Consolidate Duplicate Rows in Data Frame in R ---------------------------

head(iris) # Preview the iris data frame
# In this tutorial, I’ll illustrate how to consolidate duplicate rows in a data frame in the R programming language.

# Example: Sum Duplicates in Data Using aggregate() Function
aggregate(. ~ Species, iris, sum)    # Consolidate duplicate rows
# The previous R code aggregated the duplicate rows of the iris data frame based on the Species column. The sum function was used to consolidate the duplicate rows.

# Example: Sum Duplicates in Data Using dplyr Package
library(dplyr) # Load dplyr package
iris %>%
  group_by(Species) %>%
  summarise_all(sum) # Consolidate duplicate rows
# The previous R code aggregated the duplicate rows of the iris data frame based on the Species column using the dplyr package. The summarise_all function was used to consolidate the duplicate rows.

# summarise_all is deprecated in dplyr 1.0.0 use summarise(across(everything(), sum)) instead
iris %>%
  group_by(Species) %>%
  summarise(across(everything(), sum)) # Consolidate duplicate rows
# The previous R code aggregated the duplicate rows of the iris data frame based on the Species column using the dplyr package. The summarise function with across() was used to consolidate the duplicate rows.

# what variables are in everything()?
# everything() is a function from the dplyr package that is used to select all columns of a data frame. The function is used in combination with the across() function to apply a function to all columns of a data frame. The function is useful when you want to apply a function to all columns of a data frame without specifying the column names explicitly.
# Here everything() does not apply to the variable Species because it is a factor variable. The function everything() applies to numeric variables only.

# Summary: This tutorial illustrated how to consolidate duplicate rows in a data frame in the R programming language.

# Further Resources & Related Tutorials
# Have a look at the following list of tutorials. They explain topics such as data manipulation, data aggregation, and data visualization in R.
#
# How to Aggregate Data Frame Rows by Range of Values
# How to Aggregate Data Frame Rows by Group
# How to Aggregate Data Frame Rows by Multiple Columns
# How to Aggregate Data Frame Rows by Sum
search_lessons("Aggregate") %>% view()
search_lessons("everything") %>% view()
