source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")
# Change Y-Axis Range of Barchart in R

iris_sum <- data.frame(group = levels(iris$Species),  # Modify iris data
                       values = c(sum(iris$Sepal.Length[iris$Species == "setosa"]),
                                  sum(iris$Sepal.Length[iris$Species == "versicolor"]),
                                  sum(iris$Sepal.Length[iris$Species == "virginica"])))
iris_sum  
# explain the output of the code above
# The output of the RStudio console is a data frame containing two columns: "group" and "values". The "group" column contains the unique levels of the "Species" column of the iris data set, which are "setosa", "versicolor", and "virginica". The "values" column contains the sum of the "Sepal.Length" values for each species. The sum of the "Sepal.Length" values for "setosa" is 250.3, for "versicolor" is 296.8, and for "virginica" is 329.4.

# explain levels(iris$Species)
# The levels() function in R returns the unique levels of a factor variable. In this case, iris$Species is a factor variable with three levels: "setosa", "versicolor", and "virginica". The levels() function returns these three unique levels.

# Example 1: Modify Y-Axis of Base R Barplot
barplot(iris_sum$values)                              # Default y-axis
barplot(iris_sum$values, ylim = c(0, 700))            # User-defined y-axis
# The first barplot() function creates a barplot with the default y-axis range. The second barplot() function creates a barplot with a user-defined y-axis range from 0 to 700.

# Example 2: Modify Y-Axis of ggplot2 Barplot
library(ggplot2)                                      # Load ggplot2 package
ggp <- ggplot(iris_sum, aes(x = group, y = values)) +         # Default y-axis
  geom_bar(stat = "identity")
ggp
ggp + ylim(0, 700)                                     # User-defined y-axis

# The first ggplot() function creates a ggplot2 barplot with the default y-axis range. The second ggplot() function creates a ggplot2 barplot with a user-defined y-axis range from 0 to 700.

# explain geom_bar(stat = "identity")
# The geom_bar() function in ggplot2 is used to create bar plots. By default, geom_bar() uses stat = "count" to count the number of observations in each group. However, when stat = "identity" is specified, the height of the bars corresponds to the values in the data, rather than the count of observations.
# What are the different stat options for geom_bar() in ggplot2?
# The different stat options for geom_bar() in ggplot2 are:
# stat = "count": The height of the bars corresponds to the number of observations in each group.
# stat = "identity": The height of the bars corresponds to the values in the data.
# stat = "density": The height of the bars corresponds to the density of the data.
# stat = "probability": The height of the bars corresponds to the probability of the data.
# stat = "frequency": The height of the bars corresponds to the frequency of the data.
# stat = "bin": The height of the bars corresponds to the number of observations in each bin.

search_lessons("geom_bar") %>% view()