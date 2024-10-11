source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Append Vector as New Row to Data Frame in R (Example) -------------------

# Create a data frame
my_data <- data.frame(x = 1:5, y = 6:10)
my_data

# Create a new row
new_row <- c(6, 11)

# Append the new row to the data frame
my_data[nrow(my_data) + 1, ] <- new_row
my_data

# Append a vector as a new row to a data frame in R
# This article explains how to bind a vector to the bottom of a data frame in the R programming language.

# Example Data
# We can create an example data frame as follows:
  
df <- data.frame(col1 = letters[1:3],               # New data frame
                   col2 = LETTERS[1:3],
                   stringsAsFactors = FALSE)
df             
df2 <- data.frame(col1 = letters[1:3],               # New data frame
                 col2 = LETTERS[1:3])
df2
identical(df, df2) # FALSE
# The previous R syntax created a data frame containing two columns. The first column contains lowercase letters, and the second column contains uppercase letters.
# The stringsAsFactors argument is set to FALSE to avoid the automatic conversion of character columns to factors. It is recommended to set this argument to FALSE to avoid confusion in the R programming language. It is the default behavior in R version 4.0.0 and later.

# Append Vector as New Row to Data Frame
# We can create an example vector as follows:
  
rw <- c("new1", "new2")                             # Create vector
rw                                                  # Dsiplay vector

# Now, we can append this vector as a new row to our data frame by using the rbind function:
# We can add our vector as new row to our data frame by applying the rbind function:
  
df_new <- rbind(df, rw)                             # Bind data and row
df_new                                              # Display updated data

# The previous R syntax added the vector rw as a new row to our data frame df. The resulting data frame df_new contains three rows and two columns.

# Summary: This tutorial illustrated how to append a vector as a new row to a data frame in the R programming language.

# There were other ways to do this, for example using the add_row() function from the dplyr package, or using the bind_rows() function from the dplyr package.
# The rbind() function is a base R function that can be used to append a vector as a new row to a data frame in the R programming language.

df_new2 <- add_row(df, col1 = "new1", col2 = "new2")
df_new2
identical(df_new, df_new2) # TRUE
df_new3 <- bind_rows(df, data.frame(col1 = "new1", col2 = "new2"))
df_new3
identical(df_new, df_new3) # TRUE
# The previous R syntax added the vector rw as a new row to our data frame df. The resulting data frame df_new contains three rows and two columns.

search_lessons("which") %>% view()
