source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Adding New Data Frame Row at Certain Index in R (Example Code) ----------

# In this R programming tutorial you’ll learn how to append new rows at a specific position of a data frame.

head(iris) # Preview the iris data frame)
attributes(iris) # Check the attributes of the data frame)

my_row <- data.frame(1111, 2222, 3333, 4444, "YAAAAAY")  # Creating new row
colnames(my_row) <- colnames(iris)                       # Equalizing column names
my_row  
attributes(my_row)# Have a look at new row
#   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
iris_new <- rbind(iris[1:4, ], my_row, iris[- (1:4), ])  # Adding row
rownames(iris_new) <- 1:nrow(iris_new)                    # Renaming row names
head(iris_new)
str(iris_new) # Check the structure of the data frame)
# do the same thing using dplyr::add_row() function
# library(dplyr) already loaded in the environment
iris_new_df <- add_row(iris, 
                    Sepal.Length = 1111, 
                    Sepal.Width = 2222, 
                    Petal.Length = 3333, 
                    Petal.Width = 4444, 
                    Species = "YAAAAAY", 
                    .before = 5)
# Convert Species to factor in iris_new_df
iris_new_df$Species <- as.factor(iris_new_df$Species)
is.data.frame(iris_new_df) # check if the result is a data frame
is_tibble(iris_new_df) # check if the result is a data frame
# change the type of row.names attribute of iris_new_df to character
# row.names(iris_new_df) <- as.character(row.names(iris_new_df)) NO! row.names is not a column
iris_new_df %>% identical(iris_new) # check if the result is the same as the previous result
attributes(iris_new_df) # check the attributes of the data frame)
attributes(iris_new) # check the attributes of the data frame)

all.equal(iris_new_df, iris_new) # check if the two data frames are equal


str(iris_new_df) # check the structure of the data frame)
iris_new_tib <- as_tibble(iris_new_df) # convert the data frame to a tibble
str(iris_new_tib) # check the structure of the tibble

# Further Resources & Related Tutorials
# Have a look at the following list of R programming tutorials. They illustrate topics such as indices, extracting data, vectors, and groups.
# 
# How to Extract the First Row by Data Frame Group
# How to Repeat Each Row of a Data Frame
# How to Index Up to the End of Vectors & Data Frames
# Append Vector as New Row to Data Frame

search_lessons("Extract") %>% view()
search_lessons("Repeat") %>% view()
search_lessons("Index Up to the End") %>% view()
search_lessons("Append") %>% view()