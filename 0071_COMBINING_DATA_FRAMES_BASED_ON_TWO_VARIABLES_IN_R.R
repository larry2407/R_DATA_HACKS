source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Combining Data Frames Based On Two Variables in R -----------------------

# In this tutorial you’ll learn how to combine multiple data frames based on more than one ID column in R.

# Creation of Exemplifying Data
iris_1 <- iris[1:5, 1:3]        # Creating first example data frame
iris_1$first_id <- 1:5
iris_1$second_id <- LETTERS[1:5]
iris_1      

iris_2 <- iris[3:6, 4:5]        # Creating first example data frame
iris_2$first_id <- 3:6
iris_2$second_id <- LETTERS[3:6]
iris_2     

# Example: Applying merge Function Join Data Frames Based On 2 ID Variables
data_merge1 <- merge(iris_1,    # Using merge() function in R
                     iris_2,
                     by = c("first_id", "second_id"))
data_merge1                     # Returning combined data to console

# Related Articles & Further Resources
# You may have a look at the following R programming tutorials. They discuss similar topics as this post:
  
# Convert Data Frame to Uppercase – All Character String Columns
# How to Order Columns of a Data Frame by Variable Names
# Subset of Data Frame Error – Undefined Columns Selected
# How to Index Up to the End of Vectors & Data Frames

search_lessons("Convert") %>% view()
search_lessons("Order") %>% view()
search_lessons("Subset") %>% view()
search_lessons("Index") %>% view()

# same task using dplyr::inner_join() function
library(dplyr) # load dplyr package
data_join1 <- inner_join(iris_1, iris_2, by = c("first_id", "second_id")) %>% 
  select(colnames(data_merge1))
data_join1

data_merge1 %>% identical(data_join1) # check if the two data frames are equal: TRUE
str(data_merge1) # check the structure of the data frame
str(data_join1) # check the structure of the data frame
names(data_merge1) # check the names of the columns
names(data_join1) # check the names of the columns
