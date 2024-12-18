source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Calculate cumsum by Groups of Data Frame in R ---------------------------

# Creation of Example Data
# This article explains how to compute the cumsum by groups in a data frame in the R programming language.
# 
# Construction of Example Data
iris                         # Load example data
iris_sub <- iris[c(1, 2, 51, 52, 101, 102), ] # rows 1, 2, 51, 52, 101, 102 selected
iris_sub

# Cumsum by Groups of Data Frame# Example: Calculate Cumulative Sum by Group Using group_by & mutate Functions of dplyr Package
# install.packages("dplyr")          # Install & load dplyr, already installed
# library("dplyr") # already loaded
iris_cumsum <- iris_sub %>%        # Create cumsum column
  group_by(Species) %>%
  dplyr::mutate(
    SL_cs = cumsum(Sepal.Length),
    SW_CS = cumsum(Sepal.Width),
    PL_CS = cumsum(Petal.Length),
    PW_CS = cumsum(Petal.Width)
                ) # Cumsum by group
head(iris_cumsum)
str(iris_cumsum) # Check the structure of the data frame
# Summary: This tutorial illustrated how to calculate the cumsum by groups in a data frame in the R programming language. If you have any further questions, please let me know in the comments section.

# Further Resources & Related Articles
search_lessons("cumsum") %>% view()

