source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Combining Two Vectors in a Data Frame in R ------------------------------

# This tutorial illustrates how to merge two vector objects in a data frame in the R programming language.

# Example Data
x1 <- c(4, 1, 6, 7, 3)          # Creating vector No. 1
x1                              # Showing vector No. 1 in RStudio console
# 4 1 6 7 3
x2 <- c(5, 4, 5, 4, 5)          # Creating vector No. 2
x2                              # Showing vector No. 2 in RStudio console
# 5 4 5 4 5
# Example: Apply data.frame Function to Merge 2 Vectors in a Data Frame
df <- data.frame(x1, x2)        # Creating data frame
df                              # Showing data frame in RStudio console

# Create tibbles
df_tibble <- tibble(x1, x2)     # Create tibble from vectors
df_tibble                      # Show tibble in RStudio console

# Summary: This tutorial showed how to combine two vectors in a data frame in the R programming language.

# Further Resources & Related Articles
# Please find some related R tutorials on topics such as extracting data, variables, and groups in the list below:

# How to Drop Data Frame Rows with NaN Values
# Extract Rows in Data Frame 1 that are not in Data Frame 2
# Group Data Based On Two Variables in R
# Extract Rows of Data Frame in Range of Values
search_lessons("Drop") %>% view()