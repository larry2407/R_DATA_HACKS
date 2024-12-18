source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Computing Distance Along Loxodrome in R ---------------------------------

# In this R programming tutorial you’ll learn how to calculate the distance between two geospatial points along a loxodrome.

# Example Data
mat_ll <- matrix(c(75.13135, 79.06473,    # Define longitude & latitude points
                   15.28734, 14.29367),
                 ncol = 2)
colnames(mat_ll) <- c("long", "lati")
rownames(mat_ll) <- c("p1", "p2")
mat_ll                                    # Show longitude/latitude matrix in RStudio console

# Example: Create Rhumb Distance Matrix of a Set of Geographical Points
install.packages("geosphere")             # Install geosphere package
library("geosphere")                      # Load geosphere
distm(mat_ll, fun = distRhumb)            # Return geospatial distance

# Explain mat_11, distRhumb, geosphere, distm, fun, and install.packages
# mat_ll: matrix of longitude and latitude points
# distRhumb: function to calculate distance along loxodrome
# geosphere: package with distRhumb function
# distm: function to calculate distance matrix
# fun: argument to specify function to calculate distance

# what is the unit of the distance?
# The unit of the distance is in meters.

# what is the unit of longitude and latitude?
# The unit of longitude and latitude is in degrees.

# Summary: This tutorial illustrated how to compute the distance between two geospatial points along a loxodrome in the R programming language.

# Further Resources & Related Tutorials
# You may want to read the related tutorials on this website:
search_lessons("geospatial") %>% view()
search_lessons("distance") %>% view()
search_lessons("longitude") %>% view()
search_lessons("latitude") %>% view()
search_lessons("geosphere") %>% view()
# What are the longitue and latitude of London, UK?
# The longitude and latitude of London, UK are approximately 51.5074 and -0.1278, respectively.
# What are the longitude and latitude of New York City, USA?
# The longitude and latitude of New York City, USA are approximately 40.7128 and -74.0060, respectively.
# What are the longitude and latitude of Sydney, Australia?
# The longitude and latitude of Sydney, Australia are approximately -33.8688 and 151.2093, respectively.
# What are the longitude and latitude of Tokyo, Japan?
# The longitude and latitude of Tokyo, Japan are approximately 35.6895 and 139.6917, respectively.
# What are the longitude and latitude of Cape Town, South Africa?
# The longitude and latitude of Cape Town, South Africa are approximately -33.9249 and 18.4241, respectively.
# What are the longitude and latitude of Rio de Janeiro, Brazil?
# The longitude and latitude of Rio de Janeiro, Brazil are approximately -22.9068 and -43.1729, respectively.
# What are the longitude and latitude of Moscow, Russia?
# The longitude and latitude of Moscow, Russia are approximately 55.7558 and 37.6176, respectively.
# Compute the distance between London and New York City.
mat_lond_nyc <- matrix(c(-0.1278, 51.5074,    # Define longitude & latitude points
                   -74.0060, 40.7128),
                 ncol = 2)
colnames(mat_lond_nyc) <- c("long", "lati")
rownames(mat_lond_nyc) <- c("p1", "p2")
distm(mat_lond_nyc, fun = distRhumb) * 0.0005 # distance in km
