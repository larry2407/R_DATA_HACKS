source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Computing Meeus Great Circle Distance in R ------------------------------

# In this article, I’ll illustrate how to compute the Meeus distance in the R programming language.

# Example Data
mat_ll <- matrix(c(75.13135, 79.06473,    # Define longitude & latitude points
                   15.28734, 14.29367),
                 ncol = 2)
colnames(mat_ll) <- c("long", "lati")
rownames(mat_ll) <- c("p1", "p2")
mat_ll                                    # Show longitude/latitude matrix in RStudio console

# Example: Create Meeus Distance Matrix of a Set of Geographical Points
library("geosphere")
distm(mat_ll, fun = distMeeus)            # Return geospatial distance

# Summary: This tutorial illustrated how to compute the Meeus distance in the R programming language.

# Further Resources & Related Articles
# Please find some related R tutorials on topics such as extracting data, variables, and groups in the list below:

# How to Compute the Great Circle Distance in R

search_lessons("Compute") %>% view()
search_lessons("Great Circle Distance") %>% view()
