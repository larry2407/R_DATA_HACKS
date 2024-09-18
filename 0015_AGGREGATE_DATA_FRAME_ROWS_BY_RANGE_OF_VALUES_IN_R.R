source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Aggregate Data Frame Rows by Range of Values in R (Example Code) --------

data(iris)                                      # Load iris data frame
head(iris)

# Example: Aggregate Rows of Data Frame by Range of Values
iris_cut <- iris %>%                                        # Group by values in interval range
  mutate(cuts = cut(Sepal.Length, c(- Inf, 5, 6, 7, Inf))) %>% 
  group_by(cuts) %>% 
  summarise(sums = mean(Sepal.Width)) %>% 
  ungroup() %>% # ungroup() is used to remove the grouping but is not necessary in this case
  view() # both assigns new data frame to iris_cut and shows it

str(iris_cut1) # Check the structure of the tibble
# Summary: This tutorial showed how to aggregate rows of a data frame by a range of values in the R programming language.

# Further Resources & Related Articles
# Please find some related R tutorials on topics such as extracting data, variables, and groups in the list below:
  
# How to Drop Data Frame Rows with NaN Values
# Extract Rows in Data Frame 1 that are not in Data Frame 2
# Group Data Based On Two Variables in R
# Extract Rows of Data Frame in Range of Values
search_terms <- c("Drop Data Frame Rows with NaN Values", 
                  "Extract Rows in Data Frame 1 that are not in Data Frame 2", 
                  "Group Data Based On Two Variables in R", 
                  "Extract Rows of Data Frame in Range of Values")
search_lessons("Drop") %>% view()
search_lessons("Extract") %>% view()
search_lessons("Group") %>% view()
search_lessons("Range") %>% view()
