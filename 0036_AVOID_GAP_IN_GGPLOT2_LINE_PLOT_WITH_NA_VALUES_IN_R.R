source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Avoid Gap in ggplot2 Line Plot with NA Values in R ----------------------

# This page illustrates how to connect the lines in a line plot with missing values in the R programming language.
# what is the difference between data(iris) and iris <- iris in R?
# data(iris) loads the iris data set into the R environment, while iris <- iris assigns the iris data set to a new variable called iris.
# is it possible to modify the iris data set in R?
# Yes, it is possible to modify the iris data set in R. However, it is recommended to create a copy of the data set before making any changes to the original data set.
# If iris is modified in my global environment, will it affect the original iris data set?
# No, modifying the iris data set in the global environment will not affect the original iris data set. The original iris data set is stored in the R environment and remains unchanged.
# So I can safely call the iris data set in my R script without worrying about modifying the original data set.
# Yes, you can safely call the iris data set in your R script without worrying about modifying the original data set. The original iris data set is read-only and cannot be modified.
# How can I check if the iris data set is read-only in R?
# You can check if the iris data set is read-only by trying to modify it. If you receive an error message, the data set is read-only.
# How can I create a copy of the iris data set in R?
# You can create a copy of the iris data set by using the assignment operator <-. For example, iris_copy <- iris creates a copy of the iris data set called iris_copy.
# I can also simply call it iris without even using the assignment operator, right?
# Yes, you can call the iris data set without using the assignment operator. However, it is recommended to create a copy of the data set before making any changes to the original data set.
# I also don't need to call data(iris) to load the iris data set, right?
# Yes, you do not need to call data(iris) to load the iris data set. The iris data set is already available in the R environment.
my_iris <- iris                                         # Loading & preparing a data set
my_iris_NA <- my_iris[ , c(1, 5)]
my_iris_NA$Sepal.Length[c(1, 4, 5, 8:15, 50:55, 70:80, 120:140)] <- NA
my_iris_NA$count <- 1:50
head(my_iris_NA)

# install.packages("ggplot2")                        # Install ggplot2 package
# library("ggplot2")                                 # Load ggplot2
ggplot(my_iris_NA,                                    # Drawing ggplot2 plot of all data
       aes(x = count,
           y = Sepal.Length,
           col = Species)) +
  geom_line()

# Example: How to Connect Lines in ggplot2 Line Graph with Missing Values
ggplot(my_iris_NA[!is.na(my_iris_NA$Sepal.Length), ],    # Using only observed cases to draw plot
       aes(x = count,
           y = Sepal.Length,
           col = Species)) +
  geom_line()

# Related Articles & Further Resources
# Please find some additional R tutorials on topics such as plot legends, graphics in R, and regression models below.
# 
# Set Fixed Continuous Colour Values in ggplot2 Plot
# How to Add Lines & Points to a ggplot2 Plot
# How to Change Line Color & Type in Legend of ggplot2 Plot
# Drawing Predicted vs. Observed Values in ggplot2 Plot
# Get Fitted Values of Regression Line from ggplot2 Plot
# Eliminate Missing Values Before Drawing ggplot2 Plot

search_lessons("legend") %>% view()
search_lessons("graphic") %>% view()
search_lessons("model") %>% view()
search_lessons("regression") %>% view()
search_lessons("outlie") %>% view()
search_lessons("line") %>% view()
search_lessons("point") %>% view()
search_lessons("fit") %>% view()
search_lessons("predict") %>% view()
search_lessons("ggplot") %>% view()
search_lessons("ana") %>% view()
search_lessons("null") %>% view()
search_lessons("missing") %>% view()
search_lessons("NA") %>% view()
search_lessons("NaN") %>% view()
