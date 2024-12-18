source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Computing Vincenty Sphere Distance Matrix in R --------------------------

# This post illustrates how to compute the geospatial Vincenty sphere distance in R.

# Example Data
mat_ll <- matrix(c(75.13135, 79.06473,     # Define longitude & latitude points
                   15.28734, 14.29367),
                 ncol = 2)
colnames(mat_ll) <- c("long", "lati")
rownames(mat_ll) <- c("p1", "p2")

# Example: Create Vincenty Sphere Great Circle Distance Matrix of a Set of Geographical Points
if(!require("geosphere")) install.packages("geosphere")              # Install geosphere package
library("geosphere")                       # Load geosphere
distm(mat_ll, fun = distVincentySphere)    # Return geospatial distance


# in this lesson, we will learn how to compute the geospatial Vincenty sphere distance in R. The Vincenty formula is a method for computing the distance between two points on the surface of a spheroid. The geosphere package in R provides the distVincentySphere function to calculate the Vincenty distance between two points. The distm function can be used to compute the distance matrix between multiple points. In this example, we create a matrix of longitude and latitude points and calculate the Vincenty sphere distance matrix using the distm function with the distVincentySphere function as an argument. The resulting matrix shows the geospatial distances between the points.

# Further Resources & Related Tutorials
# Here are some additional resources related to this topic:
search_lessons("geo") %>% view()
search_lessons("spatial") %>% view()