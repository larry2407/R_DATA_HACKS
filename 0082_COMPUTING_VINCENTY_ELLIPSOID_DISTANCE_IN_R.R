source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# COMPUTING_VINCENTY_ELLIPSOID_DISTANCE_IN_R -------------------------

# Example: Computing Vincenty Ellipsoid Distance in R
# Load geosphere package
if(!require("geosphere")) install.packages("geosphere")
library(geosphere)

# Create example data
lat1 <- 52.516667
lon1 <- 13.383333
lat2 <- 51.507222
lon2 <- -0.1275

# Compute Vincenty ellipsoid distance
distVincentyEllipsoid(p1 = c(lon1, lat1), p2 = c(lon2, lat2))
# 932.4057

# Summary: The geosphere package provides the distVincentyEllipsoid function to compute the Vincenty ellipsoid distance in the R programming language.

# Add Vincenty Ellipsoid Distance to Data Frame
# Create example data
data <- data.frame(lat1 = c(52.516667, 51.507222),
                   lon1 = c(13.383333, -0.1275),
                   lat2 = c(51.507222, 52.516667),
                   lon2 = c(-0.1275, 13.383333))

# Compute Vincenty ellipsoid distance for each row
data$distance <- distVincentyEllipsoid(p1 = data[, c("lon1", "lat1")],
                                       p2 = data[, c("lon2", "lat2")])

# Print updated data frame
print(data)

# In this tutorial, I’ll show how to calculate a Vincenty ellipsoid distance in the R programming language.

# Example Data
mat_ll <- matrix(c(75.13135, 79.06473,        # Define longitude & latitude points
                   15.28734, 14.29367),
                 ncol = 2)
colnames(mat_ll) <- c("long", "lati")
rownames(mat_ll) <- c("p1", "p2")
mat_ll                                        # Show longitude/latitude matrix in RStudio console
#        long     lati
# p1 75.13135 15.28734
# p2 79.06473 14.29367
# Example: Create Vincenty Ellipsoid Great Circle Distance Matrix of a Set of Geographical Points
distm(mat_ll, fun = distVincentyEllipsoid)    # Return geospatial distance

# Summary: This article explained how to compute the Vincenty ellipsoid distance in the R programming language. The geosphere package provides the distVincentyEllipsoid function for this purpose.

search_lessons("DISTANCE") %>% view


