source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Conducting Cross-Validation With k-folds in R ---------------------------

# In this article, you’ll learn how to conduct cross-validation with k-folds in the R programming language.

# Setting up the Example
# We use three packages: data.table, class, and caret.

if(!require(data.table)) { install.packages("data.table"); library(data.table) } # Install data.table package
if(!require(class)) { install.packages("class"); library(class) }               # Install class package
if(!require(caret)) { install.packages("caret"); library(caret) }               # Install caret package


# For an illustrative example of cross-validation, we use the built-in iris dataset.

head(iris)                                                             # Print head of data

prop.table(table(iris$Species)) * 100                                  # Proportions of species in iris
# In the iris data, the three species are balanced, each accounting for 1/3 of the total number of observations.

# Example: Cross-Validation With k Folds
# We want to implement a k-nearest neighbor (kNN) algorithm for classifying new observations as one of the three iris species classes. For general information on kNN, see this post from RPubs.
# https://rpubs.com/kskand/316172

# In kNN, we have to choose the number of nearest neighbors k. We can use k-fold cross validation to estimate how well kNN works under different values of k, and thereby determine which k to choose.

nr_neighbors <- c(1, 5, 10)                                            # Setting the number of neighbors to consider
# We normalize the features.

f_norm <- function (x) { ( x - min(x) ) / ( max(x) - min(x) ) }        # Function for normalizing data
iris_X <- apply(iris[, 1:4], 2, f_norm )                               # Normalizing the data
# For the cross-validation, we decide to go with 6 folds.

nr_folds <- 6                                                          # Choosing the number of folds for cross-validation
# The iris data is partitioned into 6 folds of roughly equal size.

data_folds <- sample(rep(1:nr_folds, each = nrow(iris)/nr_folds), nrow(iris)) # Creating data folds
# Now we conduct the cross-validation. We use each fold as validation data and the rest 5 folds as training data. Based on the validation data, we predict the species via kNN and compare the predicted classes with the actual classes in the validation data. For the evaluation, we calculate the F1 score for each of the three classes of species in iris. For information on the F1 score, see e.g. Aggarwal (2015) Data Mining, Chapter 10.
# https://link.springer.com/book/10.1007/978-3-319-14142-8

result_cv <- lapply(1:nr_folds,                                        # 5-fold cross-validation
                    function (k) {
                      
                      IDs_for_training   <- (1:nrow(iris))[data_folds != k]   # IDs for training data
                      IDs_for_validation <- (1:nrow(iris))[data_folds == k]   # IDs for test data
                      
                      results_choices_neighbors <- sapply(nr_neighbors,       # Calculating kNN with "nr_neighbors" neighbors
                                                          function (i) {
                                                            
                                                            kNN_out <- class::knn(train = iris_X[IDs_for_training, ],
                                                                                  test  = iris_X[IDs_for_validation, ],
                                                                                  cl    = iris$Species[IDs_for_training],
                                                                                  k     = i)
                                                            
                                                            confMat <- caret::confusionMatrix(reference = iris$Species[IDs_for_validation],  # Model performance
                                                                                              data      = kNN_out)
                                                            confMat$byClass[,"F1"]   # Return accuracy
                                                            
                                                          })
                      colnames(results_choices_neighbors) <- paste0(nr_neighbors, "_neighbors")
                      results_choices_neighbors
                    })
# Calculate the mean value of the species-specific F1 scores over the folds.

round(Reduce('+', result_cv) / nr_folds, digits = 3)                   # Averaging the results over the k folds
#                   1_neighbors 5_neighbors 10_neighbors
# Class: setosa           1.000       1.000        1.000
# Class: versicolor       0.934       0.949        0.940
# Class: virginica        0.922       0.929        0.937
# You can see the estimates of the F1 scores for kNN with 1, 5, and 10 neighbors. There is no clear winner in this example. Try a different setting, e.g. a different number of k neighbors or different number of folds!

# Summary: This article showed how to conduct cross-validation with k-folds in the R programming language. If you have any further questions, please let me know in the comments section.

# Further Resources & Related Tutorials
# You may find some related tutorials on topics such as data manipulation, classification, and cross-validation in the following list:

search_lessons("cross") %>% view()
search_lessons("data") %>% view()

# https://data-hacks.com/anna-lena-woelwer