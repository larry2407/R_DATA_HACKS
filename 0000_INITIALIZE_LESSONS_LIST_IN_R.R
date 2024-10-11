# from
site_url <- "https://data-hacks.com/r-programming-language"
# load schedule and lesson of the day -------------------------------------

library(tidyverse)
my_schedule <- readRDS(file.path("rds", "LA_1022_R_LESSONS.Rds")) # Load data)
msg <- my_schedule %>% 
  mutate(rowid_4_digits = case_when(row_number() < 10 ~ str_c("000", row_number()),
                                    row_number() < 100 ~ str_c("00", row_number()),
                                    row_number() < 1000 ~ str_c("0", row_number()),
                                    TRUE ~ as.character(row_number()))) %>%
  filter(daily == lubridate::today()) %>%
  unite("rowid_4_digits", rowid_4_digits, my_R_lessons, sep = "_") %>%
  pull(rowid_4_digits) 

  message("Today's lesson is:\n", 
          msg, "\n", 
          toupper(msg %>% 
                    str_replace_all(" ", "_") %>% 
                    str_replace_all(":", "-")
                    ),"\n", 
          site_url)

# create a text file with all the lessons of the day
if(!file.exists(file.path("txt", "all_lessons_of_the_day.txt"))) {
  # file.remove(file.path("txt", "all_lessons_of_the_day.txt"))
  my_schedule %>% 
    # filter(daily == lubridate::today()) %>%
    pull(my_R_lessons) %>%
    writeLines(con = file.path("txt", "all_lessons_of_the_day.txt"))
}

search_lessons <- function(str) {
 str_filter <-  my_schedule %>% 
    pull(my_R_lessons) %>%
    str_subset(regex(str, ignore_case = TRUE)) 
 result <- my_schedule %>% 
    filter(my_R_lessons %in% str_filter)
}
# s1 <- search_lessons("ggplot")
# view(s1)
# 
# my_schedule %>% 
#   str_subset(my_R_lessons, "ggplot") %>%
#   view()
# vignette("regular-expressions")
# 
# bananas <- c("banana", "Banana", "BANANA")
# str_detect(bananas, "banana")
# #> [1]  TRUE FALSE FALSE
# str_detect(bananas, regex("banana", ignore_case = TRUE))
# #> [1] TRUE TRUE TRUE
# str_detect(bananas, "(i?)banana")
# search_lessons("matri") %>% view()  
