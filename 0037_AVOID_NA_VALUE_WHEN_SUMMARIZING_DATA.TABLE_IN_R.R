source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Avoid NA Value when Summarizing data.table in R -------------------------

# In this article you’ll learn how to delete NA values when summarizing a data.table in the R programming language.

# Preparing the Example
if(!require("data.table")) install.packages("data.table")                                 # Install data.table package
library("data.table")                                          # Load data.table
my_dt <- data.table(A = c(NA, 1:10, NA),                       # Example data
                    B = 101:112,
                    GR = rep(LETTERS[1:4], each = 3))
my_dt 
str(my_dt)

# Example: Summarize data.table & Remove NA
my_dt_new <- my_dt[, lapply(.SD, sum, na.rm = TRUE), by = GR]  # Summarize data.table
my_dt_new

# Summary: This tutorial illustrated how to avoid NA values when summarizing a data.table in the R programming language.

search_lessons("data.table") %>% view()
