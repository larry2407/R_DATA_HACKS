source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Automatically Wrap Long Axis Labels of ggplot2 Plot in R ----------------

# In this tutorial, I’ll illustrate how to automatically wrap long axis labels of a ggplot2 graphic in the R programming language.

# Preparing the Example
my_iris <- iris                     # Some example data
levels(iris$Species)
levels(my_iris$Species) <- c("setosa label",
                          "The very long versicolor label",
                          "The extremly long virginica plot label that cannot be shown in one line")
head(my_iris)

# install.packages("ggplot2")    # Install & load ggplot2
# library("ggplot2")
my_plot <- ggplot(my_iris,        # Draw ggplot2 plot with default labels
                  aes(x = Species,
                      y = Sepal.Width)) +
  geom_bar(stat = "identity")
my_plot

# GitHub Copilot ggplot2 Plot with Wrapped Axis Labels
my_plot + theme(axis.text.x = element_text(angle = 45, hjust = 1)) # Wrap labels

# Example: Specify Maximum Width of Labels in ggplot2 Graphic Using str_wrap() Function
# install.packages("stringr")    # Install stringr package
# library("stringr")             # Load stringr
my_plot +                      # Set maximum length for each line
  scale_x_discrete(labels = function(x) str_wrap(x, width = 15))

# Summary: This tutorial illustrated how to automatically wrap long axis labels of a ggplot2 plot in the R programming language. If you have any further questions, please let me know in the comments section.

# from str_wrap documentation
# str_wrap("a very long string", width = 10)
# str_wrap("a very long string", width = 10, indent = 2)

### ** Examples

thanks_path <- file.path(R.home("doc"), "THANKS")
thanks <- str_c(readLines(thanks_path), collapse = "\n")
thanks <- word(thanks, 1, 3, fixed("\n\n"))
cat(str_wrap(thanks), "\n")
cat(str_wrap(thanks, width = 40), "\n")
cat(str_wrap(thanks, width = 60, indent = 2), "\n")
cat(str_wrap(thanks, width = 60, indent = 2, exdent = 2), "\n")
cat(str_wrap(thanks, width = 0, exdent = 2), "\n")

