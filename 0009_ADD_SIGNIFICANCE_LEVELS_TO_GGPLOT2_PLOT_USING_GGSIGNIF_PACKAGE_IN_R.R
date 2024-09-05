source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule
# Add Significance Levels to ggplot2 Plot Using ggsignif Package i --------

# This article explains how to annotate significance levels to a ggplot2 graph in the R programming language.

head(iris) # Examine the first few rows of the iris data

library(ggplot2) # Load ggplot2 package
# question: what packages become available with the instruction library(tidyverse)?
# answer: dplyr, ggplot2, tibble, tidyr, readr, purrr, stringr, forcats

# Create ggplot2 scatterplot
my_ggplot <- ggplot(iris,        # Drawing a regular ggplot2 boxplot
                    aes(x = Species,
                        y = Sepal.Length)) +
  geom_boxplot()
my_ggplot # Print ggplot2 boxplot

# Add significance levels to ggplot2 plot
if(!require("ggsignif")) install.packages("ggsignif", dependencies = TRUE)
library(ggsignif)
# GitHub Copilot solution
my_ggplot + geom_signif(comparisons = list(c("versicolor", "virginica")),
                        map_signif_level = TRUE,
                        textsize = 6)

# website solution
my_ggplot +                      # Adding significance stars
  geom_signif(comparisons = list(c("setosa", "versicolor"),
                                 c("setosa", "virginica")),
              map_signif_level = TRUE,
              y_position = c(8, 9))

# Summary: This tutorial showed how to add significance levels to a ggplot2 plot in the R programming language. If you have any further questions, please let me know in the comments section.

