source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Converting UNIX Epoch Time to Date Class in R Programming ---------------

# In this post you’ll learn how to convert UNIX epoch time objects to a date object in the R programming language.

# Introduction of Example Data
extime <- 1112352325                                      # Example data
# Example: Change Timestamp to Date
extime_new1 <- as.POSIXct(extime, origin = "1970-01-01")  # Converting timestamp to POSIXct
extime_new1
# "2005-04-01 12:45:25 CEST"
extime_new2 <- as.Date(extime_new1)                       # Converting POSIXct to Date
extime_new2
# "2005-04-01"
# Summary: This tutorial illustrated how to convert UNIX epoch time objects to a date object in the R programming language.
# Related Articles
# Please find some related R tutorials on topics such as extracting data, variables, and groups in the list below:
search_lessons("extract") %>% view()
search_lessons("time") %>% view()

