source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule
# https://www.youtube.com/watch?v=sMl-2ud2FsM
# Attach & Detach Data Frame in R (Example) -------------------------------

# Creation of Example Data
# This page shows how to attach and detach data frames in the R programming language.

# Example Data
my_data <- data.frame(x = c(7, 1, 1, 5),         # Create example data
                      y = c(3, 2, 3, 1),
                      z = c(8, 5, 8, 2))
my_data                                          # Show data in console

# Example for the Application of attach() & detach()
# If we try to use the first column of our example data without the prefix my_data$, the RStudio console returns an error:
  
x                                                # Try to access the column x
# Error: object 'x' not found
# However, we can attach our data frame as follows:
  
attach(my_data) # Attach data frame
# Now, we can access the column x by simply typing it’s name:

  x                                                # Try to access the column x
# 7 1 1 5
# Once we are finished working on our data, we can detach the data frame:
  
detach(my_data)                                  # Detach data frame
# The column x can not be accessed without the prefix my_data$ anymore:
  
  x                                                # Try to access the column x
# Error: object 'x' not found
# when to use the attach function?
# The attach function is useful when you are working with a data frame and want to access its columns without the need to specify the data frame’s name each time. However, it is generally recommended to avoid using the attach function, as it can lead to confusion and errors in your code. Instead, you can use the with function to access the columns of a data frame without attaching it.
# example of using the with function
# The with function allows you to access the columns of a data frame without attaching it. Here is an example of how to use the with function:
  with(my_data, x)                                # Access column x using with function
# 7 1 1 5
# In this example, we use the with function to access the column x of our example data frame without attaching it. This approach is generally considered safer and more robust than using the attach function.
# Summary: This tutorial explained how to attach and detach data frames in the R programming language.
# The attach function allows you to access the columns of a data frame without specifying the data frame’s name each time.
# However, it is generally recommended to avoid using the attach function, as it can lead to confusion and errors in your code.
# Instead, you can use the with function to access the columns of a data frame without attaching it.
  # What is the benefit of using with(my_data, x) ? I might as well use my_data$x to access the column x.
  # The benefit of using with(my_data, x) is that you can access multiple columns of the data frame without having to type my_data$ each time. For example, you can use with(my_data, c(x, y)) to access both columns x and y. This can make your code more concise and easier to read, especially when working with multiple columns.
  
  # The attach and detach functions are very useful when you want to work for a longer time on the same data object. However, you should be careful, because for inexperienced R users the code might get harder to read. 

search_lessons("attach") %>% view()
search_lessons("detach") %>% view()
search_lessons("with") %>% view()
search_lessons("with.*function") %>% view()
search_lessons("within") %>% view()
  
