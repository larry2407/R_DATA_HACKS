source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Computing Law of Cosines Distance Matrix in R ---------------------------

# Define the function to compute the Law of Cosines distance between two points
law_of_cosines_distance <- function(lat1, lon1, lat2, lon2) {
  # Convert latitude and longitude from degrees to radians
  lat1 <- lat1 * pi / 180
  lon1 <- lon1 * pi / 180
  lat2 <- lat2 * pi / 180
  lon2 <- lon2 * pi / 180
  
  # Compute the Law of Cosines distance
  acos(sin(lat1) * sin(lat2) + cos(lat1) * cos(lat2) * cos(lon2 - lon1)) * 6371
}
# In this post you’ll learn how to compute the geospatial Law of Cosines in the R programming language.

# Example Data
mat_ll <- matrix(c(75.13135, 79.06473,    # Define longitude & latitude points
                   15.28734, 14.29367),
                 ncol = 2)
colnames(mat_ll) <- c("long", "lati")
rownames(mat_ll) <- c("p1", "p2")
mat_ll                                    # Show longitude/latitude matrix in RStudio console

# Example: Create Law of Cosines Great Circle Distance Matrix of a Set of Geographical Points
# install.packages("geosphere")             # Install geosphere package
library("geosphere")                      # Load geosphere package
distm(mat_ll, fun = distCosine)           # Return geospatial distance
law_of_cosines_distance(15.28734, 75.13135, 14.29367, 79.06473)  # Compute distance between two points

# Summary: You have learned how to compute the Law of Cosines distance matrix in the R programming language.
search_lessons("Distance") %>% view
