source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")
# Check whether a Data Object is a Vector in R

# In this tutorial, I’ll demonstrate how to check whether an object is a vector in the R programming language.

# Creation of Example Data
lst <- list(letters[5:1],           # Creating a list object
            1:7,
            "abc")
lst

# Example 1: Test if Object ist a Vector Using is.vector() Function
is.vector(lst)                      # Unexpected output
# [1] TRUE

# Example 2: Test if Object ist a Vector Using is.vector() & is.atomic() Functions
is.vector(lst) && is.atomic(lst)    # Expected output
# [1] FALSE

# Example 3: Test if Object ist a Vector Using is.vector() & is.list() Functions
is.vector(lst) && is.list(lst)      # Expected output
# [1] TRUE

# Example 4: Test if Object ist a Vector Using is.vector() & length() Functions
is.vector(lst) && length(lst) > 1   # Expected output

# Example 5: Test if Object ist a Vector Using is.vector() & is.null() Functions
is.vector(lst) && is.null(names(lst)) # Expected output

# Example 6: Test if Object ist a Vector Using is.vector() & is.null() Functions
is.vector(lst) && is.null(attr(lst, "class")) # Expected output

# Example 7: Test if Object ist a Vector Using is.vector() & is.null() Functions
is.vector(lst) && is.null(attr(lst, "row.names")) # Expected output

# Example 8: Test if Object ist a Vector Using is.vector() & is.null() Functions
is.vector(lst) && is.null(attr(lst, "names")) # Expected output

# Example 9: Test if Object ist a Vector Using is.vector() & is.null() Functions
is.vector(lst) && is.null(attr(lst, "dim")) # Expected output

# Example 10: Test if Object ist a Vector Using is.vector() & is.null() Functions
is.vector(lst) && is.null(attr(lst, "tsp")) # Expected output

# Why is lst both a list and a vector?
# The is.vector() function returns TRUE for a list object because a list is a type of vector in R.
# However, the is.atomic() function returns FALSE for a list object because a list is not an atomic vector in R.
# The is.list() function returns TRUE for a list object because a list is a type of list in R.
# The length() function returns the number of elements in a list object.
# The is.null() function returns TRUE if the object has no names attribute.
# The attr() function returns the value of the specified attribute of an object.
# The names() function returns the names of the elements in a list object.
# The dim() function returns the dimensions of an object.
# The tsp() function returns the time series attributes of an object.
dim(lst)


# Summary: This tutorial illustrated how to check whether an object is a vector in the R programming language.

# Further Resources & Related Tutorials
# Have a look at the following list of R programming tutorials. They illustrate topics such as indices, extracting data, vectors, and groups.
# Here, you can find some further resources that are related to the topic of this post:
#   
# How to Create a Named Vector Object
# ggplot2 Error: Must be Data Frame not S3 Object Class Uneval
# Printing Character String & Data Object on Same Line
# Identify Non-Numeric Values in Vector or Data Frame Column
# Change Name of Vector or Data Frame Object in R

search_lessons("Create") %>% view()
search_lessons("ggplot2") %>% view()
search_lessons("Print") %>% view()
search_lessons("Identify") %>% view()
search_lessons("Change") %>% view()
search_lessons("S3") %>% view()
search_lessons("Extract") %>% view()
search_lessons("Repeat") %>% view()
search_lessons("Index") %>% view()
