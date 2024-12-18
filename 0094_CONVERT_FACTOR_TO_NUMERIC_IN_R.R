source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Convert Factor to Numeric in R ------------------------------------------

# This tutorial explains how to convert a factor vector to numeric in the R programming language.

# Example Vector
vec <- as.factor(c("5", "2", "2", "7", "5"))   # Create example vector
vec                                           # Print example vector 
# [1] 5 2 2 7 5
# Levels: 2 5 7
# Conversion of Factor to Numeric
# The following R code converts our example vector from factor to numeric in R. Note that we need to convert the factor to character with the as.character() function first, before we can convert the character to numeric. If we don’t perform this step in between, we would lose the factor levels.

vec_num <- as.numeric(as.character(vec))        # Convert factor to numeric

vec_num                                        # Print converted vector

# see https://youtu.be/_rPde-SPDVE

# create an ordered factor vector
vec_ordered <- factor(c("5", "2", "2", "7", "5"), ordered = TRUE)   # Create ordered factor vector
vec_ordered                                                          # Print ordered factor vector

# create another one with different levels
vec_ordered2 <- factor(c("5", "2", "2", "7", "5"), ordered = TRUE, levels = c("2", "5", "7"))   # Create ordered factor vector
vec_ordered2                                                                                      # Print ordered factor vector
identical(vec_ordered, vec_ordered2) # TRUE

vec_ordered3 <- factor(c("5", "2", "2", "7", "5"), ordered = TRUE, levels = c("7", "5", "2"))   # Create ordered factor vector
vec_ordered3 

identical(vec_ordered, vec_ordered3) # FALSE
vec_num3 <- as.numeric(as.character(vec_ordered3))        # Convert factor to numeric
vec_num3                                        # Print converted vector
identical(vec_num, vec_num3) # TRUE
# the level structure is not important for the conversion

# in this tutorial, we have learned how to convert a factor vector to numeric in the R programming language. If you have any further questions, please let me know in the comments section below.

# Summary: This tutorial explained how to convert a factor vector to numeric in the R programming language. If you have any further questions, please let me know in the comments section below.

# Further Resources & Related Articles
# Please find some related R tutorials on topics such as data types, factors, and numeric vectors in the following list.

# Convert Factor to Numeric in R
search_lessons("Convert") %>% view()
search_lessons("Factor") %>% view()