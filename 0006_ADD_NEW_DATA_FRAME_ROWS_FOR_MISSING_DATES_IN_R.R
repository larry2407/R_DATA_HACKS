
# Add New Data Frame Rows for Missing Dates in R (Example Code) -----------

my_df <- data.frame(time = as.Date(c("2021-05-10",  # Create example data
                                     "2021-05-13",
                                     "2021-05-15")),
                    x1 = 1:3,
                    x2 = letters[1:3])
my_df                                               # Print example data

# Example: Add New Rows in Case of Missing Dates Using padr Package
if(!require("padr")) install.packages("padr")        # Install & load padr
library("padr")
pad(my_df)                                          # Using pad() function

# From: https://www.datanovia.com/en/blog/r-package-tidyr-tutorial/ GitHub Copilot
# Example: Add New Rows in Case of Missing Dates Using tidyr Package
if(!require("tidyr")) install.packages("tidyr")      # Install & load tidyr
library("tidyr")
complete(my_df, time = seq.Date(min(my_df$time),     # Using complete() function
                                max(my_df$time),
                                by = "day"))

# Related Articles
# Furthermore, you may have a look at the other articles on this website:
#   
#   Delete Data Frame Rows where All or Some Values are Missing
# Extracting Rows with Missing Values in R
# Remove Rows with Missing Values in R
# Remove Columns with Missing Values in R

# Summary: This tutorial illustrated how to add new rows to a data frame in the R programming language.
