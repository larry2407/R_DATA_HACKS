source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Avoid that ifelse Function Converts Date into Numeric in R --------------
if(FALSE){
# ifelse() is a function in R that allows you to test a condition and return different values depending on whether the condition is TRUE or FALSE. However, if you use ifelse() with dates, you may run into a problem where the function converts the date into a numeric value. This can cause issues with your data analysis, so it's important to know how to avoid this problem. 

# In this lesson, we'll show you how to avoid that ifelse function converts date into numeric in R.

# Create a Data Frame with Dates ------------------------------------------------

# First, let's create a data frame with dates. We'll use the data.frame() function to create a data frame with two columns: one for dates and one for values. We'll use the seq() function to generate a sequence of dates from January 1, 2021 to January 10, 2021.

dates <- seq(as.Date("2021-01-01"), as.Date("2021-01-10"), by = "day")
values <- rnorm(length(dates))

df <- data.frame(date = dates, value = values)
print(df)

# Convert Dates to Numeric Values with ifelse() -----------------------------------

# Now, let's use the ifelse() function to convert the dates in the data frame to numeric values. We'll create a new column called "date_numeric" and use the ifelse() function to convert the dates to numeric values.

df$date_numeric <- ifelse(df$date < as.Date("2021-01-05"), 1, 0)
print(df)

# As you can see, the ifelse() function has converted the dates in the "date" column to numeric values in the "date_numeric" column. This can cause issues with your data analysis, as the dates are no longer in a date format.

# Avoid Converting Dates to Numeric Values ----------------------------------------

# To avoid that ifelse function converts date into numeric in R, you can use the lubridate package to work with dates. The lubridate package provides functions that make it easy to work with dates and times in R.

# First, install the lubridate package if you haven't already done so:

# install.packages("lubridate")

# Then, load the lubridate package:

library(lubridate)

# Now, let's create a new column called "date_numeric2" and use the ifelse() function with the ymd() function from the lubridate package to convert the dates to numeric values without converting them to numeric values.

df$date_numeric2 <- ifelse(df$date < ymd("2021-01-05"), 1, 0)
print(df)

# As you can see, the dates in the "date" column have been converted to numeric values in the "date_numeric2" column without converting them to numeric values. This allows you to work with dates in R without running into issues with the ifelse() function converting dates to numeric values.
str(df)
identical(df$date_numeric2, df$date_numeric)
# Stop here this nonsense
}
# In this R article you’ll learn how to avoid that the ifelse function converts date objects to the numeric class.

# Example Data
x <- as.Date(c("2026-07-15",                    # Constructing vector of dates
               "2027-11-13",
               "2025-12-12"))
x
class(x)
typeof(x)
# Example 1: ifelse() of Base R Turns Dates into Numeric
x1 <- ifelse(test = x == "2025-12-12",          # Apply ifelse function
             yes = x + 1,
             no = x)
x1
# [1] 20649 21135 20435
class(x1)        
typeof(x1)  
# Example 2: Prevent ifelse() from Turning Dates into Numeric Using if_else() Function of dplyr Package
# install.packages("dplyr")                       # Install dplyr package
# library("dplyr")                                # Load dplyr
x2 <- if_else(condition = x == "2025-12-12",    # Using if_else function of dplyr package
              true = x + 1,
              false = x)
x2
# [1] "2026-07-15" "2027-11-13" "2025-12-13"
class(x2)    
typeof(x2)

# Summary: This tutorial illustrated how to avoid that the ifelse function converts date objects to the numeric class in the R programming language.
# Related Tutorials
search_lessons("ifelse") %>% view()
search_lessons("avoid") %>% view()

identical(x == "2025-12-12", x == as.Date("2025-12-12"))
# so dates can be compared with strings