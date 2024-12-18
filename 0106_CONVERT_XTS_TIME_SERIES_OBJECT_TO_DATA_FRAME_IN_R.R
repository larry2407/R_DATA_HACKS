source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Convert xts Time Series Object to Data Frame in R -----------------------

# In this R tutorial you’ll learn how to transform an xts time series object to the data frame class.

# Setting up the Example

if(!require("xts")) install.packages("xts")
library("xts")# Install & load xts package

time_series <- xts(1:5,                     # Construct time series object
                   as.Date(c("2022-11-08",
                             "2021-05-14",
                             "2020-07-18",
                             "2024-12-12",
                             "2022-03-24")))
time_series

# Construct time series object using lubridate package
if(!require("lubridate")) install.packages("lubridate")
library("lubridate")# Install & load lubridate package

time_series2 <- xts(1:5,                     # Construct time series object
                   ymd(c("2022-11-08",
                         "2021-05-14",
                         "2020-07-18",
                         "2024-12-12",
                         "2022-03-24")))
identical(time_series, time_series2) # Check if the two time series objects are identical → TRUE

# Example: Transforming xts Object to Data Frame Using as.data.frame() Function
data_frame <- as.data.frame(time_series)    # Convert time series to data frame
data_frame
str(data_frame)                             # Structure of data frame)
str(time_series)                             # Structure of data frame)
# Convert time series to tibble
if(!require("tibble")) install.packages("tibble")
library("tibble")# Install & load tibble package

tibble <- as_tibble(time_series)            # Convert time series to tibble
tibble # tibble has no row names

# Related Articles
# Have a look at the following list of R programming tutorials. They discuss topics such as character strings, factors, and time objects.

# Convert Data Frame Column to Numeric in R
# Convert Row to Header of Data Frame
# Convert Data Frame Columns from Factor to Character in R
# Convert Categorical Data Frame Column to Numeric / Integer
# How to Convert Data Frame to xts & zoo Time Series

search_lessons("time") %>% view()
