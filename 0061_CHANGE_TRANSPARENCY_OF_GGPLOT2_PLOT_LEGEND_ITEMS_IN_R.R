source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")
# Change Transparency of ggplot2 Plot Legend Items in R 

# This article shows how to adjust the transparency of ggplot2 legend items in R programming.

# Preparing the Example
head(iris)                                       # Load and inspect iris data

my_plot <- ggplot(iris, aes(x = Sepal.Length,    # Default ggplot2 graph
                            y = Sepal.Width,
                            colour = Species)) + geom_point()
my_plot                                          # Drawing graph

# Example: Decreasing Legend Alpha of ggplot2 Graphic in R
my_plot +                                        # Modifying alpha of legend items
  guides(colour = guide_legend(
    override.aes = list(alpha = 0.3)))

# Example: Increasing Legend Alpha of ggplot2 Graphic in R
my_plot +                                        # Modifying alpha of legend items
  guides(colour = guide_legend(
    override.aes = list(alpha = 0.8)))

# Summary: This tutorial illustrated how to adjust the transparency of ggplot2 legend items in the R programming language. If you have any further questions, please let me know in the comments section.

search_lessons("legend") %>% view()
