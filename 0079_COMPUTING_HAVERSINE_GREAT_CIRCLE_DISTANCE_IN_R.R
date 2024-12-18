source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Computing Haversine Great Circle Distance in R --------------------------

# In this article you’ll learn how to compute the Haversine great circle distance in R.

# Example Data
mat_ll <- matrix(c(75.13135, 79.06473,    # Define longitude & latitude points
                   15.28734, 14.29367),
                 ncol = 2)
colnames(mat_ll) <- c("long", "lati")
rownames(mat_ll) <- c("p1", "p2")
mat_ll                                    # Show longitude/latitude matrix in RStudio console

# Example: Create Haversine Distance Matrix of a Set of Geographical Points
install.packages("geosphere")             # Install & load geosphere
library("geosphere")
distm(mat_ll, fun = distHaversine)        # Return geospatial distance matrix

mat_lond_nyc <- matrix(c(-0.1278, 51.5074,    # Define longitude & latitude points
                         -74.0060, 40.7128),
                       ncol = 2)
colnames(mat_lond_nyc) <- c("long", "lati")
rownames(mat_lond_nyc) <- c("p1", "p2")
distm(mat_lond_nyc, fun = distHaversine)        # Return geospatial distance matrix

# Summary: This tutorial illustrated how to compute the Hjson great circle distance in the R programming language.

# Further Resources & Related Articles
# Please find some related R tutorials on topics such as extracting data, variables, and groups in the list below:

search_lessons("extract") %>% view()

