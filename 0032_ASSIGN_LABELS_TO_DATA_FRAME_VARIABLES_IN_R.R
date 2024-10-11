source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Assign Labels to Data Frame Variables in R ------------------------------

# In this article, I’ll show how to add labels to the columns of a data frame in the R programming language.

head(iris) # preview the iris data frame
my_ir <- iris
# Example: Assigning Variable Labels to Data Frame Using label() Function of Hmisc Package
labs <- c(Sepal.Length = "1st variable label",    # Define labels
          Sepal.Width = "2nd variable label",
          Petal.Length = "3rd variable label",
          Petal.Width = "4th variable label",
          Species = "5th variable label")
install.packages("Hmisc")                         # Install Hmisc package
library("Hmisc")                                  # Load Hmisc
label(my_ir) <- as.list(labs[match(names(my_ir),    # Add variable labels
                                  names(labs))])
label(my_ir)                             
# Summary: This tutorial illustrated how to assign labels to the columns of a data frame in the R programming language. If you have any further questions, please let me know in the comments section.
search_lessons("label") %>% view()
# search_lessons("Hmisc") %>% view()

# Related Tutorials
# You may find some related R programming tutorials on topics such as variables, matrices, and numeric values below.

# How to Return a Row of a Data Frame Based On a Variable
# How to Apply the Same Function to Every Specified Data Table Variable
# Get Row Numbers where Data Frame Variable has Specific Value
# Transpose Data Matrix & Maintain First Variable as Column Names
# How to Add a New Variable Between 2 Data Frame Columns
search_lessons("Return") %>% view()
search_lessons("Apply") %>% view()
search_lessons("Row Numbers") %>% view()
search_lessons("Transpose") %>% view()
search_lessons("Add") %>% view()
