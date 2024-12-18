source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Convert Date to Weekday in R --------------------------------------------

# This article shows how to convert a date object to the corresponding day of the week in the R programming language.

# Example Data
# We create an example vector with the as.Date function:
  
  my_dates <- as.Date(c("2023-02-15", "2018-05-01", "1974-01-10"))  # Create vector of dates
# Convert Dates to Days of the Week in R
# We can convert our example dates to the corresponding days of the week with the weekdays function:
  
  weekdays(my_dates)  # Convert dates to days of the week
  
# Can we do the same with the lubridate package?
# Yes, we can also use the wday function from the lubridate package to convert dates to days of the week:
  
  if(!require("lubridate")) install.packages("lubridate")  # Install & load lubridate
  library("lubridate")
  
  wday(my_dates, label = TRUE)  # Convert dates to days of the week with lubridate

# Summary: This tutorial illustrated how to convert a date object to the corresponding day of the week in the R programming language. If you have any further questions, please let me know in the comments section.
  
search_lessons("date") %>% view()
search_lessons("weekday") %>% view()


  
  
