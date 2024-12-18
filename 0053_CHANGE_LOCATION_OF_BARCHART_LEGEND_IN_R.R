source("0000_INITIALIZE_LESSONS_LIST_IN_R.R") # Load schedule

# Change Location of Barchart Legend in R ---------------------------------

# In this tutorial you’ll learn how to modify the position of the legend of a bargraph in the R programming language.

# Creation of Example Data
my_mat <- matrix(24:10, ncol = 3)    # Create matrix in R
rownames(my_mat) <- letters[1:5]
my_mat                               # Display example matrix in RStudio console

# Example: Specify Position of Barchart Legend Properly
barplot(my_mat,                      # Create barplot with legend
        col = 1:nrow(my_mat),
        legend.text = TRUE,
        args.legend = list(x = "topleft",
                           bty = "n",
                           inset = c(- 0.22, 0)))

# Example: Change Position of Barchart Legend

barplot(my_mat,                      # Create barplot with legend
        col = 1:nrow(my_mat),
        legend.text = TRUE,
        args.legend = list(x = "topright",
                           bty = "n",
                           inset = c(0, 0)))

# Example: Change Position of Barchart Legend to Bottom

barplot(my_mat,                      # Create barplot with legend
        col = 1:nrow(my_mat),
        legend.text = TRUE,
        args.legend = list(x = "bottom",
                           bty = "n",
                           inset = c(0, 0)))

# using ggplot2
# Example: Change Position of Barchart Legend in ggplot2

# Load ggplot2 package
library(ggplot2)

# Create ggplot2 Barchart
my_data <- data.frame(x = letters[1:5],
                      y = 24:10)
my_plot <- ggplot(my_data, aes(x, y)) +
  geom_bar(stat = "identity", aes(fill = x)) +
  theme(legend.position = "top")
my_plot

# Change Position of ggplot2 Barchart Legend
my_plot + theme(legend.position = "bottom")

# In this tutorial you have learned how to change the position of the legend of a barchart in the R programming language. If you have any further questions, please let me know in the comments section.

search_lessons("legend") %>% view()
search_lessons("barplot") %>% view()
search_lessons("ggplot2") %>% view()