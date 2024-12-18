source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Correlation Matrix Contains Only NA & 1 in R ----------------------------

# In this tutorial you’ll learn how to show correlation values instead of NA when using the cor() function in the R programming language.

# Example Data
str(iris)                              # Structure of iris data set
iris_num <- iris[ , 1:4]               # Extract numeric columns
iris_num$Sepal.Length[c(1, 7, 10)] <- NA
iris_num$Sepal.Width[c(3, 55, 110)] <- NA
iris_num$Petal.Length[c(4, 5, 20)] <- NA
iris_num$Petal.Width[c(1, 3, 10)] <- NA
head(iris_num)                         # Head of modified iris data set

# Example 1: Reproduce Correlation Matrix Showing Only NA or 1
cor(iris_num)                          # Using cor() function

# Example 2: Correlation Matrix without NA Values
cor(iris_num, use = "complete.obs")    # Using cor() function & use argument
cor(iris_num, use = "pairwise.complete.obs")    # Using cor() function & use argument
# what does the use argument in the cor() function in R do?
# use = "everything": returns NA if there are missing values
# use = "all.obs": returns NA if there are missing values
# use = "complete.obs": returns only complete observations
# use = "pairwise.complete.obs": returns only complete pairs of observations
# use = "na.or.complete": returns only complete observations

# In this R programming tutorial you learned how to show correlation values instead of NA when using the cor() function in the R programming language.

# Further Resources & Related Tutorials
# You may want to read the related tutorials on the cor() function and the use argument in the cor() function in the following list.
search_lessons("cor") %>% view()
