source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")
# Change Year/Month/Day/Hour/Minute/Second to Date/Time in R

# In this article you’ll learn how to change a character string to a date-time object with hours, minutes, and seconds in the R programming language.

# Creation of Example Data
x <- "26-04-2024 06:28:51"                     # Example date as character string
x

# Example: Applying as.POSIXlt() Function to Convert Character String to Date-Time Object
as.POSIXlt(x, format = "%d-%m-%Y %H:%M:%S")    # Applying as.POSIXlt()
# Related Articles & Further Resources
# Please find some related R programming tutorials in the following list:
#   Extract Year, Month, Day, Hour, Minute, and Second from Date-Time in R
#   Group & Summarize Daily Data to Month & Year Using dplyr
# How to Get the Day of a Date Object
# How to Get the Month of a Date Object
# Extracting Year & Month of zoo::yearmon Date Object

search_lessons("Extract") %>% view()
search_lessons("Group") %>% view()
search_lessons("Get the Day") %>% view()
search_lessons("Get the Month") %>% view()
search_lessons("zoo") %>% view()
search_lessons("yearmon") %>% view()
