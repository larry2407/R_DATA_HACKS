
# load schedule and lesson of the day -------------------------------------

library(tidyverse)
my_schedule <- readRDS(file.path("rds", "LA_1022_R_LESSONS.Rds")) # Load data)
my_schedule %>% 
  filter(daily == lubridate::today()) %>%
  pull(my_R_lessons) %>%
  message()
