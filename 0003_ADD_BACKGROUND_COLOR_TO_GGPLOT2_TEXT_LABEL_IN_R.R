
# Add Background Color to ggplot2 Text Label in R (Example Code) ----------
if(!require("ggplot2")) install.packages("ggplot2", dependencies = TRUE)
library(ggplot2)
my_plot <- ggplot(iris,        # Create ggplot2 scatterplot
                  aes(x = Petal.Width,
                      y = Petal.Length)) +
  geom_point()
# GitHub Copilot
if(FALSE){
# From: https://www.datanovia.com/en/blog/ggplot-text-annotation/  # page not found
my_plot +                    # Add background color to text label
  annotate("text", x = 0.5, y = 5, label = "This is a text label",
           color = "black", size = 5, fontface = "bold",
           hjust = 0.5, vjust = 0.5, family = "serif",
           fill = "red")
}

my_plot +                      # Add text without background
  annotate("text",
           x = 1.7,
           y = 5,
           label = "I want to show this text!")
my_plot +                      # Change color of text background
  geom_label(aes(x = 1.7,
                 y = 5,
                 label = "I want to show this text!"),
             fill = "#ffdc5e")

# Related Tutorials & Further Resources
# You may find some related R programming tutorials on topics such as lines, colors, and ggplot2 in the following list:
#   
#   How to Add a ggplot2 Title & Subtitle with Different Size & Color
# Change Position of ggplot2 Legend in R
# How to Modify the Color of a ggplot2 Line Graph
# How to Modify ggplot2 Barplot Color
# How to Change Line Color & Type in Legend of ggplot2 Plot
# The resources above will be added soon.

# Summary: This tutorial showed how to add a background color to a text label in a ggplot2 plot in the R programming language. If you have any further questions, please let me know in the comments section.