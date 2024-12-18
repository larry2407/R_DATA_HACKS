source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Convert List of Multiple Vectors to Single Vector in R ------------------


# Create List of Vectors
list_of_vectors <- list(letters[1:3], LETTERS[1:3], 1:3)  # Create list of vectors
list_of_vectors                                           # Print list of vectors

# Convert List of Vectors to Single Vector
unlist(list_of_vectors)                                   # Convert list to single vector

# GitHub Copilot use unlist() function to convert list of vectors to single vector

# In this tutorial you’ll learn how to transform several vectors in a list to a single vector in the R programming language.

# Creation of example list in R
example_list <- list(LETTERS[1:3],    # Constructing example list in R
                     letters[10:5],
                     "XYX",
                     c("A", "a", "A", "a"))
example_list              
# Convert list of vectors to single vector in R

# Example: Unlist List of Vectors
unlist(example_list)                  # Converting list to vector of characters

# Is there a way to achieve the same result without using the unlist() function?
# I can use the c() function to concatenate the vectors in the list.
# I can use the append() function to add the vectors in the list.

identical(unlist(example_list), c(LETTERS[1:3], letters[10:5], "XYX", c("A", "a", "A", "a"))) # check if the result is the same as the previous result R returns TRUE
# Summary: This tutorial illustrated how to convert a list of vectors to a single vector in the R programming language.

# Further Resources & Related Tutorials
# Have a look at the following list of tutorials. They explain topics such as vectors, lists, and data frames.

search_lessons("vector") %>% view()