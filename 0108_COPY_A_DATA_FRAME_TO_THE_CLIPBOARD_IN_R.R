source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Copy a Data Frame to the Clipboard in R ---------------------------------

# In this R tutorial you’ll learn how to copy a data object to the clipboard.

# Introduction of Example Data
my_df <- head(iris)
my_df
#   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
# 1          5.1         3.5          1.4         0.2  setosa
# 2          4.9         3.0          1.4         0.2  setosa
# 3          4.7         3.2          1.3         0.2  setosa
# 4          4.6         3.1          1.5         0.2  setosa
# 5          5.0         3.6          1.4         0.2  setosa
# 6          5.4         3.9          1.7         0.4  setosa
# Example: How to Copy a Data Frame to the Clipboard Using the write_clip() Function
clipr::write_clip(my_df)        # Copy iris data set to clipboard
# Press Ctrl + v.
# Sepal.Length	Sepal.Width	Petal.Length	Petal.Width	Species
# 5.1	3.5	1.4	0.2	setosa
# 4.9	3	1.4	0.2	setosa
# 4.7	3.2	1.3	0.2	setosa
# 4.6	3.1	1.5	0.2	setosa
# 5	3.6	1.4	0.2	setosa
# 5.4	3.9	1.7	0.4	setosa

search_lessons("write") %>% view()



