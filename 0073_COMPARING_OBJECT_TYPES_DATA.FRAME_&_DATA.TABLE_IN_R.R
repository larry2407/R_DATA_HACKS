source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Comparing Object Types data.frame & data.table in R ---------------------

# In this tutorial, I’ll explain why you should use data.table instead of data.frame objects in the R programming language using two simple illustrations. In a nutshell: data.table is fast, intuitive, and easy-to-read.

# If you want to get more information on data.table, we recommend you to read the introduction post on CRAN.

# Setting up the Examples
# For the illustration, we have to install and load the following packages: data.table, dplyr, and rbenchmark.

install.packages("data.table")     # Install & load data.table
library("data.table")

# install.packages("dplyr")          # Install & load dplyr
# library("dplyr")

install.packages("rbenchmark")     # Install & load rbenchmark
library("rbenchmark")

# To illustrate some differences of data.table and data.frame, we load the built-in iris dataset.

head(iris)                          # Print first rows of iris data frame


# We define two objects with the same iris data: A data.frame iris_df and a data.table iris_dt.

iris_df <- iris                    # New object
iris_dt <- data.table(iris)        # New data.table object
class(iris_df)                     # Object class of the data
class(iris_dt)                     # Object class of the data

# Example 1: Comparing the Language of data.frame and data.table
# We aim for calculating group sums of a variable for specific data rows. This can be done in various ways using the data.frame and data.table syntax.

# We start with the piping system of dplyr. It is quite intuitive and can be used for both a data.frame and a data.table.

r1 <- iris_df %>% # Calculating the sum of different groups
  group_by(Species) %>%
  filter(Sepal.Width <= 3.5) %>%
  summarize(sum(Petal.Width))

r2 <- iris_df %>% # Calculating the sum of different groups
  filter(Sepal.Width <= 3.5) %>%
  group_by(Species) %>%
  summarize(sum(Petal.Width))
r1 %>% identical(r2) # Check if the results are the same
# TRUE

# As an alternative, we can also use the sapply function.

sapply(unique(iris_df$Species),  # Calculating the sum of different groups
       function (x){
         sum(iris_df[iris_df$Sepal.Width <= 3.5 & iris_df$Species == x, "Petal.Width"])
       })
sapply(levels(iris_df$Species),  # Calculating the sum of different groups
       \(x){
         sum(iris_df[iris_df$Sepal.Width <= 3.5 & iris_df$Species == x, "Petal.Width"])
       })
# [1]  8.1 66.3 94.6
# Finally, we can use the data.table syntax, which is both, really short and intuitiv. Remember, the data.table syntax is data.table[chosen rows, chosen action, by argument].

iris_dt[Sepal.Width <= 3.5, sum(Petal.Width), Species] # Calculating the sum of different groups
#       Species   V1
# 1:     setosa  8.1
# 2: versicolor 66.3
# 3:  virginica 94.6
# Example 2: Comparing the Computation Time
# To see that the data.table syntax is not only coming in handy because of its readability, but also because of its efficiency, let us compare the time each of the three above codes take.

benchmark("Example_1" = iris_df %>% # Comparing computation time
            group_by(Species) %>%
            filter(Sepal.Width <= 3.5) %>%
            summarize(sum(Petal.Width)),
          "Example_2" = sapply(unique(iris_df$Species),
                               function (x){
                                 sum(iris_df[iris_df$Sepal.Width <= 3.5 & iris_df$Species == x, "Petal.Width"])
                               }),
          "Example_2bis" = sapply(levels(iris_df$Species),  # Calculating the sum of different groups
                 \(x){
                   sum(iris_df[iris_df$Sepal.Width <= 3.5 & iris_df$Species == x, "Petal.Width"])
                 }),
          "Example_3" = iris_dt[Sepal.Width <= 3.5, sum(Petal.Width), Species],
          replications = 1000
)[,1:6]
# test replications elapsed relative user.self sys.self

# As you can see, the performance of sapply and data.table is close and much faster than the dplyr piping. For larger data, the data.table syntax becomes faster than sapply.
#       test replications elapsed relative user.self sys.self
# see https://data-hacks.com/comparing-object-types-data-frame-data-table-r

search_lessons("benchmark") %>% view()



