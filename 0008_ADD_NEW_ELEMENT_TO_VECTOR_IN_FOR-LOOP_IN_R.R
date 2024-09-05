source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule
# Add New Element to Vector in for-Loop in R (Example Code) ---------------

vector_object <- letters[1:3]            # Creating a vector object in R
vector_object                            # Show vector object in RStudio console


for(index in 1:2) {                      # Starting for-loop in R
  vector_object_new <- letters[index]    # Defining new element for vector
  vector_object <- c(vector_object, vector_object_new)  # Adding new element to vector
}

# website's solution below is very similar to mine using GitHub Copilot above
for(index in 1:5) {                      # Starting the for-loop
  vector_object_new <- LETTERS[index]    # New value in each iteration
  vector_object <- c(vector_object,      # Add new value to original vector
                     vector_object_new)
}

vector_object                            # Print updated vector in RStudio console

# GitHub Copilot use c() function to add new element to vector
c(vector_object, "A", "B", "C", "D", "E")

# summary: This tutorial illustrated how to add new elements to a vector in the R programming language.