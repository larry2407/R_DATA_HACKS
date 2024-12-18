source("0000_INITIALIZE_LESSONS_LIST_IN_R.R")

# Connect Mean Points of Error Bars in ggplot2 Plot in R ------------------

# This post illustrates how to draw a graphic where the mean points of error bars are connected in the R programming language.

# Creation of Example Data
my_df <- data.frame(group = LETTERS[1:4],    # Constructing example data
                    estimate = c(1, 5, 3, 3))
my_df$low_CI <- my_df$estimate - 0.2         # Make up confidence intervals
my_df$upp_CI <- my_df$estimate + 0.2
my_df                                        # Display example data in RStudio console

# Example: Drawing Error Bars with Connected Points Using ggplot2 Package
# install.packages("ggplot2")                  # Install & load ggplot2 package
# library("ggplot2")
my_plot <- ggplot(my_df,                     # ggplot2 plot with error bars and connecting lines
                  aes(x = group, 
                      y = estimate,
                      col = group, 
                      group = 1)) +
  geom_errorbar(aes(ymin = low_CI,
                    ymax = upp_CI)) +
  geom_line(aes(x = 1:nrow(my_df),
                y = estimate)) + 
  geom_point()
my_plot
# explain the code for my_plot
# my_plot <- ggplot(my_df,                     # ggplot2 plot with error bars and connecting lines
#                   aes(x = group,
#                       y = estimate,
#                       col = group,
#                       group = 1)) +
#   geom_errorbar(aes(ymin = low_CI,
#                     ymax = upp_CI)) +
#   geom_line(aes(x = 1:nrow(my_df),
#                 y = estimate)) +
#   geom_point()
# my_plot
# The previous R code created a ggplot2 plot with error bars and connected points. The ggplot2 package was used to create the plot. The plot consists of three main layers:

# The first layer (geom_errorbar) was used to draw the error bars.
# The second layer (geom_line) was used to connect the mean points of the error bars.
# The third layer (geom_point) was used to add the mean points to the plot.
# The aes function was used to specify the aesthetics of the plot. In this case, the x and y aesthetics were set to the group and estimate columns of the my_df data frame, respectively. The col and group aesthetics were set to the group column of the my_df data frame. The geom_errorbar function was used to draw the error bars. The ymin and ymax aesthetics were set to the low_CI and upp_CI columns of the my_df data frame, respectively. The geom_line function was used to connect the mean points of the error bars. The x and y aesthetics were set to the 1:nrow(my_df) and estimate columns of the my_df data frame, respectively. The geom_point function was used to add the mean points to the plot. Finally, the ggplot2 plot was displayed in the RStudio console.

# explain in particular col = group, group = 1
# The col aesthetic was set to the group column of the my_df data frame. This means that each group in the plot will be colored differently. The group aesthetic was set to 1. This means that all the data points in the plot will be treated as belonging to the same group. This is necessary for the geom_line function to connect the mean points of the error bars.

# Further Resources & Related Tutorials
# Please find some related R programming tutorials on topics such as descriptive statistics and lines in the following list.

# How to Draw Median & Mean Line to Histogram
# Draw Frequencies & Percentages on Top of Histogram Bars

# Summary: This tutorial showed how to connect the mean points of error bars in a ggplot2 plot in the R programming language. If you have any further questions, please let me know in the comments section.

search_lessons("median") %>% view()
search_lessons("frequencies") %>% view()
search_lessons("percentages") %>% view()
search_lessons("histogram") %>% view()
search_lessons("descriptive") %>% view()
search_lessons("statistics") %>% view()
search_lessons("lines") %>% view()
search_lessons("error") %>% view()
search_lessons("bars") %>% view()
search_lessons("connected") %>% view()