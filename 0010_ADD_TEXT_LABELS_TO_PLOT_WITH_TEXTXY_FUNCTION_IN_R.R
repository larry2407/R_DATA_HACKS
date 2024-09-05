
# Add Text Labels to Plot with textxy() Function in R (2 Examples) --------

plot(iris$Sepal.Length,        # Creating plot without text
     iris$Sepal.Width)

if(!require("calibrate")) install.packages("calibrate")
library(calibrate)
args(install.packages)

# what is the difference between the default value dependencies = NA and dependencies = TRUE in the install.packages() function in R?
# dependencies = NA: install only the requested package
# dependencies = TRUE: install the requested package and all its dependencies

# Example 1: Annotate Single Text Element to Base R Plot Using textxy() Function
plot(iris$Sepal.Length,        # Creating plot without text
     iris$Sepal.Width)
textxy(X = 5,                  # Write text to graphic
       Y = 3.5,
       labs = "Text Element")

# Example 2: Annotate Multiple Text Elements with Different Positions, Sizes & Colors
plot(iris$Sepal.Length,        # Creating plot without text
     iris$Sepal.Width)
textxy(X = 4:6,                # Write text to graphic
       Y = 2:4,
       labs = paste("Text Element No.", 1:3),
       cex = 1.5, # Change size of text
       col = 2:4) # Change color of text