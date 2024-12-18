source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Convert Hours, Minutes & Seconds (hms) to Seconds in R ------------------

# hms::as_hms() converts a character string to a hms object

# What is the hms package in R?
# The hms package in R is a package that provides a class for storing and manipulating times in hours, minutes, and seconds. The hms package is part of the tidyverse collection of packages and is designed to work seamlessly with other tidyverse packages like dplyr and ggplot2.

# Example: Convert Hours, Minutes & Seconds to Seconds
# Load hms package
if(!require("hms")) install.packages("hms")
library(hms)

# Create example data
my_hms <- c("01:02:03", "04:05:06", "07:08:09")

# Convert hms to seconds
my_seconds <- as.numeric(hms::as_hms(my_hms))

# Print result
my_seconds


# In this R tutorial you’ll learn how to convert hours, minutes, and seconds into seconds only.
# 
# Creation of Example Data
x <- c("01:11:17")                      # Create example hours, minutes & seconds
x
# [1] "01:11:17"
# Example: Convert Hours, Minutes & Seconds to Seconds Using period_to_seconds() Function of lubridate Package
# install.packages("lubridate")           # Install & load lubridate package
# library("lubridate")
period_to_seconds(lubridate::hms(x))    # Convert hms to seconds
# [1] 4277
# Related Tutorials
# In the following, you can find some further resources that are similar to the topic of this article.
# 
# Divide Date-Time Object into Two Separate Variables
# Return Hours, Minutes & Seconds of Time Object
# Convert Numeric to Unit Object in R – unit() Function
# Convert Integer & Numeric Range into Categorical Variable


# Can this also be done with the lubridate package?
# Yes, the lubridate package also provides functions for working with times and durations. The lubridate package provides functions like hms() and as.duration() that can be used to convert times to durations and vice versa. The lubridate package is another popular package for working with dates and times in R.

# So both lubridate and hms packages can be used to convert times to durations and vice versa in R.
# Both lubridate and hms packages are part of the tidyverse collection of packages and are designed to work seamlessly with other tidyverse packages like dplyr and ggplot2.

# Which packages constitute the tidyverse?
# The tidyverse is a collection of R packages that are designed to work together to make data analysis easier and more efficient. The tidyverse includes packages like dplyr, ggplot2, tidyr, readr, purrr, stringr, and forcats. The tidyverse packages are designed to work seamlessly together and provide a consistent and coherent set of tools for data analysis in R.

# Can you list them all?
# Yes, the tidyverse includes the following packages:
# dplyr
# ggplot2
# tidyr
# readr
# purrr
# stringr
# forcats
# lubridate
# hms
# tibble
# dbplyr
# haven
# httr
# jsonlite
# modelr
# broom
# rvest
# xml2
# readxl
# reprex
# cellranger
# selectr
# covr
# testthat
# devtools
# usethis
# withr
# remotes
# rlang
# cli
# crayon
# desc
# pkgbuild
# pkgload
# rcmdcheck
# sessioninfo
# callr
# fs
# ps
# processx
# rprojroot
# testthat
# vctrs
# ellipsis
# fansi
# pillar
# rmarkdown
# tidyselect
# yaml
# cli
# crayon
# desc
# Is there a command that can list the tidyverse packages and their versions, and also their dependencies?
# Yes, the sessionInfo() function can be used to list the tidyverse packages and their versions, as well as their dependencies. The sessionInfo() function provides detailed information about the R session, including the version of R, the version of the tidyverse packages, and the version of any other packages that are loaded in the R session.
sessionInfo()

search_lessons("Divide Date-Time Object into Two Separate Variables") %>% view()
search_lessons("time") %>% view()


