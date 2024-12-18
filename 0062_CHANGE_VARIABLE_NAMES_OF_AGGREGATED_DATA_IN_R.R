source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")
# Change Variable Names of Aggregated Data in R

# In this tutorial you’ll learn how to change the variable names of an aggregated data frame in the R programming language.

# Example Data
head(iris) # Preview the iris data frame

# Aggregating Data
iris_aggregated <- aggregate(. ~ Species, data = iris, FUN = mean) # Aggregate data
head(iris_aggregated) # Print aggregated data

# Change Variable Names of Aggregated Data
names(iris_aggregated) <- c("Species", "Mean_Sepal_Length", "Mean_Sepal_Width", "Mean_Petal_Length", "Mean_Petal_Width") # Change variable names
head(iris_aggregated) # Print aggregated data with new variable names

iris_aggr1 <- aggregate(list(iris$Sepal.Length),           # Apply aggregate
                        list(iris$Species),
                        mean)
iris_aggr1 

# Example: Set Variable Names within aggregate() Function
iris_aggr2 <- aggregate(list(values = iris$Sepal.Length),  # Set names
                        list(group = iris$Species),
                        mean)
iris_aggr2     

# Related Tutorials & Further Resources
# In addition, you may want to read the related tutorials which I have published on this homepage.

# Modify Row & Column Names of Data without Dimensions
# Exporting Data Frame without Column Names in R
# Adding Column Names / Header to Data Frame
# Merge Rows of Data Frames with Unequal Column Names

search_lessons("Names") %>% view()
search_lessons("Export") %>% view()
search_lessons("import") %>% view()
search_lessons("Add") %>% view()
search_lessons("Merge") %>% view()
